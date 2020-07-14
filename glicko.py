# -*- coding: utf-8 -*-
"""
    glicko2
    ~~~~~~~
    The Glicko2 rating system.
    :copyright: (c) 2012 by Heungsub Lee
    :license: BSD, see LICENSE for more details.
"""
import math
import pandas as pd
import numpy as np
import operator
from sklearn.utils import shuffle
import json

__version__ = '0.0.dev'


#: The actual score for win
WIN = 1.
#: The actual score for draw
DRAW = 0.5
#: The actual score for loss
LOSS = 0.


MU = 1500
PHI = 100
SIGMA = 0.06
TAU = 1.0
EPSILON = 0.000001
#: A constant which is used to standardize the logistic function to
#: `1/(1+exp(-x))` from `1/(1+10^(-r/400))`
Q = math.log(10) / 400
G = 0.75


# dictz = {'a':5, 'c': 5, 'd': 7}
#
#
# for k, v in enumerate(dictz.items()):
#     print(k)


class Rating(object):

    def __init__(self, mu=MU, phi=PHI, sigma=SIGMA):
        self.mu = mu
        self.phi = phi
        self.sigma = sigma

    def __repr__(self):
        c = type(self)
        args = (c.__module__, c.__name__, self.mu, self.phi, self.sigma)
        return '%s.%s(mu=%.3f, phi=%.3f, sigma=%.3f)' % args


class Glicko2(object):

    def __init__(self, mu=MU, phi=PHI, sigma=SIGMA, tau=TAU, epsilon=EPSILON):
        self.mu = mu
        self.phi = phi
        self.sigma = sigma
        self.tau = tau
        self.epsilon = epsilon

    def create_rating(self, mu=None, phi=None, sigma=None, year=None):
        if mu is None:
            mu = self.mu
        if phi is None:
            phi = self.phi
        if sigma is None:
            sigma = self.sigma
        return Rating(mu, phi, sigma)

    def create_rating_from_df(self, team1, team2):
        mu_1 = team_mu[team1]
        mu_2 = team_mu[team2]
        phi_1 = team_phi[team1]
        phi_2 = team_phi[team2]
        sigma_1 = team_sigma[team1]
        sigma_2 = team_sigma[team2]
        if mu_1 is None:
            mu_1 = self.mu
        if mu_2 is None:
            mu_2 = self.mu
        if phi_1 is None:
            phi_1 = self.phi
        if phi_2 is None:
            phi_2 = self.phi
        if sigma_1 is None:
            sigma_1 = self.sigma
        if sigma_2 is None:
            sigma_2 = self.sigma
        return Rating(mu_1, phi_1, sigma_1), Rating(mu_2, phi_2, sigma_2)

    def scale_down(self, rating, ratio=173.7178, adv=0, qbadv=0, home=0):
        mu = rating.mu - 30 * home - 0.5 * 10 * adv - 0.5 * 20 * qbadv
        # mu = rating.mu
        mu = (mu - self.mu) / ratio
        phi = rating.phi / ratio
        return self.create_rating(mu, phi, rating.sigma)

    def scale_up(self, rating, ratio=173.7178):
        mu = rating.mu * ratio + self.mu
        phi = rating.phi * ratio
        return self.create_rating(mu, phi, rating.sigma)

    def reduce_impact(self, rating):
        """The original form is `g(RD)`. This function reduces the impact of
        games as a function of an opponent's RD.
        """
        return 1 / math.sqrt(1 + (3 * rating.phi ** 2) / (math.pi ** 2))

    def expect_score(self, rating, other_rating, impact):
        return 1. / (1 + math.exp(-impact * (rating.mu - other_rating.mu)))

    def determine_sigma(self, rating, difference, variance):
        """Determines new sigma."""
        phi = rating.phi
        difference_squared = difference ** 2
        # 1. Let a = ln(s^2), and define f(x)
        alpha = math.log(rating.sigma ** 2)
        def f(x):
            """This function is twice the conditional log-posterior density of
            phi, and is the optimality criterion.
            """
            tmp = phi ** 2 + variance + math.exp(x)
            a = math.exp(x) * (difference_squared - tmp) / (2 * tmp ** 2)
            b = (x - alpha) / (self.tau ** 2)
            return a - b
        # 2. Set the initial values of the iterative algorithm.
        a = alpha
        if difference_squared > phi ** 2 + variance:
            b = math.log(difference_squared - phi ** 2 - variance)
        else:
            k = 1
            while f(alpha - k * math.sqrt(self.tau ** 2)) < 0:
                k += 1
            b = alpha - k * math.sqrt(self.tau ** 2)
        # 3. Let fA = f(A) and f(B) = f(B)
        f_a, f_b = f(a), f(b)
        # 4. While |B-A| > e, carry out the following steps.
        # (a) Let C = A + (A - B)fA / (fB-fA), and let fC = f(C).
        # (b) If fCfB < 0, then set A <- B and fA <- fB; otherwise, just set
        #     fA <- fA/2.
        # (c) Set B <- C and fB <- fC.
        # (d) Stop if |B-A| <= e. Repeat the above three steps otherwise.
        while abs(b - a) > self.epsilon:
            c = a + (a - b) * f_a / (f_b - f_a)
            f_c = f(c)
            if f_c * f_b < 0:
                a, f_a = b, f_b
            else:
                f_a /= 2
            b, f_b = c, f_c
        # 5. Once |B-A| <= e, set s' <- e^(A/2)
        return math.exp(1) ** (a / 2)

    def rate_df(self, rating_1, rating_2, score, adv, qbadv, home):
        # Step 2. For each player, convert the rating and RD's onto the
        #         Glicko-2 scale.
        rating_1 = self.scale_down(rating_1, adv=adv, qbadv=qbadv, home=home)
        rating_2 = self.scale_down(rating_2, adv=adv, qbadv=qbadv, home=home)
        # Step 3. Compute the quantity v. This is the estimated variance of the
        #         team's/player's rating based only on game outcomes.
        # Step 4. Compute the quantity difference, the estimated improvement in
        #         rating by comparing the pre-period rating to the performance
        #         rating based only on game outcomes.
        impact_1 = self.reduce_impact(rating_2)
        impact_2 = self.reduce_impact(rating_1)
        expected_score_1 = self.expect_score(rating_1, rating_2, impact_1)
        expected_score_2 = self.expect_score(rating_2, rating_1, impact_2)
        variance_inv_1 = impact_1 ** 2 * expected_score_1 * (1 - expected_score_1)
        variance_inv_2 = impact_2 ** 2 * expected_score_2 * (1 - expected_score_2)
        win = 0
        if score > 0:
            win = 1
        difference_1 = impact_1 * (win - expected_score_1) \
                       + G * (math.log(1 + abs(score)))
        difference_2 = impact_2 * ((1-win) - expected_score_2) \
                       - G * (math.log(1 + abs(score)))
        d_square_inv_1 = (
                expected_score_1 * (1 - expected_score_1) *
                (Q ** 2) * (impact_1 ** 2))
        d_square_inv_2 = (
                expected_score_2 * (1 - expected_score_2) *
                (Q ** 2) * (impact_2 ** 2))
        difference_1 /= variance_inv_1
        difference_2 /= variance_inv_2
        variance_1 = 1. / variance_inv_1
        variance_2 = 1. / variance_inv_2
        denom_1 = rating_1.phi ** -2 + d_square_inv_1
        denom_2 = rating_2.phi ** -2 + d_square_inv_2
        # mu = rating.mu + Q / denom * (difference / variance_inv)
        phi_1 = math.sqrt(1 / denom_1)
        phi_2 = math.sqrt(1 / denom_2)
        # Step 5. Determine the new value, Sigma', ot the sigma. This
        #         computation requires iteration.
        sigma_1 = self.determine_sigma(rating_1, difference_1, variance_1)
        sigma_2 = self.determine_sigma(rating_2, difference_2, variance_2)
        # Step 6. Update the rating deviation to the new pre-rating period
        #         value, Phi*.
        phi_star_1 = math.sqrt(phi_1 ** 2 + sigma_1 ** 2)
        phi_star_2 = math.sqrt(phi_2 ** 2 + sigma_2 ** 2)
        # Step 7. Update the rating and RD to the new values, Mu' and Phi'.
        phi_1 = 1 / math.sqrt(1 / phi_star_1 ** 2 + 1 / variance_1)
        phi_2 = 1 / math.sqrt(1 / phi_star_2 ** 2 + 1 / variance_2)
        mu_1 = rating_1.mu + phi_1 ** 2 * (difference_1 / variance_1)
        mu_2 = rating_2.mu + phi_2 ** 2 * (difference_2 / variance_2)
        # Step 8. Convert ratings and RD's back to original scale.
        return self.scale_up(self.create_rating(mu_1, phi_1, sigma_1)), self.scale_up(self.create_rating(mu_2, phi_2, sigma_2))

    def rate_df_1(self, rating_1, rating_2, score, adv, qbadv, home):
        # Step 2. For each player, convert the rating and RD's onto the
        #         Glicko-2 scale.
        rating_1 = self.scale_down(rating_1, adv=adv, qbadv=qbadv, home=home)
        rating_2 = self.scale_down(rating_2, adv=-1*adv, qbadv=-1*qbadv, home=-1*home)
        # Step 3. Compute the quantity v. This is the estimated variance of the
        #         team's/player's rating based only on game outcomes.
        # Step 4. Compute the quantity difference, the estimated improvement in
        #         rating by comparing the pre-period rating to the performance
        #         rating based only on game outcomes.
        impact = self.reduce_impact(rating_2)
        expected_score = self.expect_score(rating_1, rating_2, impact)
        variance_inv = impact ** 2 * expected_score * (1 - expected_score)
        win = 0
        if score > 0:
            win = 1
        difference = impact * (win - expected_score) \
                       + np.sign(score) * G * (math.log(1 + abs(score)))
        d_square_inv = (
                expected_score * (1 - expected_score) *
                (Q ** 2) * (impact ** 2))
        difference /= variance_inv
        variance = 1. / variance_inv
        denom = rating_1.phi ** -2 + d_square_inv
        # mu = rating.mu + Q / denom * (difference / variance_inv)
        phi = math.sqrt(1 / denom)
        # Step 5. Determine the new value, Sigma', ot the sigma. This
        #         computation requires iteration.
        sigma = self.determine_sigma(rating_1, difference, variance)
        # Step 6. Update the rating deviation to the new pre-rating period
        #         value, Phi*.
        phi_star = math.sqrt(phi ** 2 + sigma ** 2)
        # Step 7. Update the rating and RD to the new values, Mu' and Phi'.
        phi = 1 / math.sqrt(1 / phi_star ** 2 + 1 / variance)
        mu = rating_1.mu + phi ** 2 * (difference / variance)
        # Step 8. Convert ratings and RD's back to original scale.
        return self.scale_up(self.create_rating(mu, phi, sigma))

    def rate(self, rating, series):
        # Step 2. For each player, convert the rating and RD's onto the
        #         Glicko-2 scale.
        rating = self.scale_down(rating)
        # Step 3. Compute the quantity v. This is the estimated variance of the
        #         team's/player's rating based only on game outcomes.
        # Step 4. Compute the quantity difference, the estimated improvement in
        #         rating by comparing the pre-period rating to the performance
        #         rating based only on game outcomes.
        d_square_inv = 0
        variance_inv = 0
        difference = 0
        for actual_score, other_rating in series:
            other_rating = self.scale_down(other_rating)
            impact = self.reduce_impact(other_rating)
            expected_score = self.expect_score(rating, other_rating, impact)
            variance_inv += impact ** 2 * expected_score * (1 - expected_score)
            win = 0
            if actual_score > 0:
                win = 1
            difference += impact * (win - expected_score) * G * (math.log(1+abs(actual_score)) + 1)
            d_square_inv += (
                expected_score * (1 - expected_score) *
                (Q ** 2) * (impact ** 2))
        difference /= variance_inv
        variance = 1. / variance_inv
        denom = rating.phi ** -2 + d_square_inv
        # mu = rating.mu + Q / denom * (difference / variance_inv)
        phi = math.sqrt(1 / denom)
        # Step 5. Determine the new value, Sigma', ot the sigma. This
        #         computation requires iteration.
        sigma = self.determine_sigma(rating, difference, variance)
        # Step 6. Update the rating deviation to the new pre-rating period
        #         value, Phi*.
        phi_star = math.sqrt(phi ** 2 + sigma ** 2)
        # Step 7. Update the rating and RD to the new values, Mu' and Phi'.
        phi = 1 / math.sqrt(1 / phi_star ** 2 + 1 / variance)
        mu = rating.mu + phi ** 2 * (difference / variance)
        # Step 8. Convert ratings and RD's back to original scale.
        return self.scale_up(self.create_rating(mu, phi, sigma))

    def rate_1vs1(self, rating1, rating2, drawn=False):
        return (self.rate(rating1, [(DRAW if drawn else WIN, rating2)]),
                self.rate(rating2, [(DRAW if drawn else LOSS, rating1)]))

    def quality_1vs1(self, rating1, rating2):
        expected_score1 = self.expect_score(rating1, rating2, self.reduce_impact(rating1))
        expected_score2 = self.expect_score(rating2, rating1, self.reduce_impact(rating2))
        expected_score = (expected_score1 + expected_score2) / 2
        return 2 * (0.5 - abs(0.5 - expected_score))


class almost(object):

    def __init__(self, val, precision=3):
        self.val = val
        self.precision = precision

    def almost_equals(self, val1, val2):
        if round(val1, self.precision) == round(val2, self.precision):
            return True
        fmt = '%.{0}f'.format(self.precision)
        mantissa = lambda f: int((fmt % f).replace('.', ''))
        return abs(mantissa(val1) - mantissa(val2)) <= 1

    def __eq__(self, other):
        try:
            if not self.almost_equals(self.val.volatility, other.volatility):
                return False
        except AttributeError:
            pass
        return (self.almost_equals(self.val.mu, other.mu) and
                self.almost_equals(self.val.sigma, other.sigma))

    def __repr__(self):
        return repr(self.val)


# def test_glickman_example():
#     env = Glicko2(tau=0.5)
#     r1 = env.create_rating(1500)
#     r2 = env.create_rating(1200)
#     r3 = env.create_rating(1550)
#     r4 = env.create_rating(1700)
#     rated = env.rate(r1, [(-1, r2), (-10, r4), (30, r3)])
#     # env.create_rating2(1464.06, 151.52, 0.05999)
#     assert almost(rated) == env.create_rating(1464.051, 151.515, 0.05999)



Team = ['ARI',
'ATL',
'BAL',
'BUF',
'CAR',
'CHI',
'CIN',
'CLE',
'DAL',
'DEN',
'DET',
'GB',
'HOU',
'IND',
'JAX',
'KC',
'LAC',
'LARM',
'MIA',
'MIN',
'NE',
'NO',
'NYG',
'NYJ',
'OAK',
'PHI',
'PIT',
'SEA',
'SF',
'TB',
'TEN',
'WAS',
]

Year = [
'2006',
'2007',
'2008',
'2009',
'2010',
'2011',
'2012',
'2013',
'2014',
'2015',
'2016',
'2017',
'2018',
'2019'
]

Side = ['O', 'D']

team_mu = {}
team_phi = {}
team_sigma = {}
team_mu_final = {}

for i in range(0, len(Team)):
    team_mu[Year[0] + "-" + Team[i] + "-" + Side[0]] = None
    team_mu[Year[1] + "-" + Team[i] + "-" + Side[0]] = None
    team_mu[Year[2] + "-" + Team[i] + "-" + Side[0]] = None
    team_mu[Year[3] + "-" + Team[i] + "-" + Side[0]] = None
    team_mu[Year[4] + "-" + Team[i] + "-" + Side[0]] = None
    team_mu[Year[5] + "-" + Team[i] + "-" + Side[0]] = None
    team_mu[Year[6] + "-" + Team[i] + "-" + Side[0]] = None
    team_mu[Year[7] + "-" + Team[i] + "-" + Side[0]] = None
    team_mu[Year[8] + "-" + Team[i] + "-" + Side[0]] = None
    team_mu[Year[9] + "-" + Team[i] + "-" + Side[0]] = None
    team_mu[Year[10] + "-" + Team[i] + "-" + Side[0]] = None
    team_mu[Year[11] + "-" + Team[i] + "-" + Side[0]] = None
    team_mu[Year[12] + "-" + Team[i] + "-" + Side[0]] = None
    team_mu[Year[13] + "-" + Team[i] + "-" + Side[0]] = None
    team_mu[Year[0] + "-" + Team[i] + "-" + Side[1]] = None
    team_mu[Year[1] + "-" + Team[i] + "-" + Side[1]] = None
    team_mu[Year[2] + "-" + Team[i] + "-" + Side[1]] = None
    team_mu[Year[3] + "-" + Team[i] + "-" + Side[1]] = None
    team_mu[Year[4] + "-" + Team[i] + "-" + Side[1]] = None
    team_mu[Year[5] + "-" + Team[i] + "-" + Side[1]] = None
    team_mu[Year[6] + "-" + Team[i] + "-" + Side[1]] = None
    team_mu[Year[7] + "-" + Team[i] + "-" + Side[1]] = None
    team_mu[Year[8] + "-" + Team[i] + "-" + Side[1]] = None
    team_mu[Year[9] + "-" + Team[i] + "-" + Side[1]] = None
    team_mu[Year[10] + "-" + Team[i] + "-" + Side[1]] = None
    team_mu[Year[11] + "-" + Team[i] + "-" + Side[1]] = None
    team_mu[Year[12] + "-" + Team[i] + "-" + Side[1]] = None
    team_mu[Year[13] + "-" + Team[i] + "-" + Side[1]] = None

    team_phi[Year[0] + "-" + Team[i] + "-" + Side[0]] = None
    team_phi[Year[1] + "-" + Team[i] + "-" + Side[0]] = None
    team_phi[Year[2] + "-" + Team[i] + "-" + Side[0]] = None
    team_phi[Year[3] + "-" + Team[i] + "-" + Side[0]] = None
    team_phi[Year[4] + "-" + Team[i] + "-" + Side[0]] = None
    team_phi[Year[5] + "-" + Team[i] + "-" + Side[0]] = None
    team_phi[Year[6] + "-" + Team[i] + "-" + Side[0]] = None
    team_phi[Year[7] + "-" + Team[i] + "-" + Side[0]] = None
    team_phi[Year[8] + "-" + Team[i] + "-" + Side[0]] = None
    team_phi[Year[9] + "-" + Team[i] + "-" + Side[0]] = None
    team_phi[Year[10] + "-" + Team[i] + "-" + Side[0]] = None
    team_phi[Year[11] + "-" + Team[i] + "-" + Side[0]] = None
    team_phi[Year[12] + "-" + Team[i] + "-" + Side[0]] = None
    team_phi[Year[13] + "-" + Team[i] + "-" + Side[0]] = None
    team_phi[Year[0] + "-" + Team[i] + "-" + Side[1]] = None
    team_phi[Year[1] + "-" + Team[i] + "-" + Side[1]] = None
    team_phi[Year[2] + "-" + Team[i] + "-" + Side[1]] = None
    team_phi[Year[3] + "-" + Team[i] + "-" + Side[1]] = None
    team_phi[Year[4] + "-" + Team[i] + "-" + Side[1]] = None
    team_phi[Year[5] + "-" + Team[i] + "-" + Side[1]] = None
    team_phi[Year[6] + "-" + Team[i] + "-" + Side[1]] = None
    team_phi[Year[7] + "-" + Team[i] + "-" + Side[1]] = None
    team_phi[Year[8] + "-" + Team[i] + "-" + Side[1]] = None
    team_phi[Year[9] + "-" + Team[i] + "-" + Side[1]] = None
    team_phi[Year[10] + "-" + Team[i] + "-" + Side[1]] = None
    team_phi[Year[11] + "-" + Team[i] + "-" + Side[1]] = None
    team_phi[Year[12] + "-" + Team[i] + "-" + Side[1]] = None
    team_phi[Year[13] + "-" + Team[i] + "-" + Side[1]] = None

    team_sigma[Year[0] + "-" + Team[i] + "-" + Side[0]] = None
    team_sigma[Year[1] + "-" + Team[i] + "-" + Side[0]] = None
    team_sigma[Year[2] + "-" + Team[i] + "-" + Side[0]] = None
    team_sigma[Year[3] + "-" + Team[i] + "-" + Side[0]] = None
    team_sigma[Year[4] + "-" + Team[i] + "-" + Side[0]] = None
    team_sigma[Year[5] + "-" + Team[i] + "-" + Side[0]] = None
    team_sigma[Year[6] + "-" + Team[i] + "-" + Side[0]] = None
    team_sigma[Year[7] + "-" + Team[i] + "-" + Side[0]] = None
    team_sigma[Year[8] + "-" + Team[i] + "-" + Side[0]] = None
    team_sigma[Year[9] + "-" + Team[i] + "-" + Side[0]] = None
    team_sigma[Year[10] + "-" + Team[i] + "-" + Side[0]] = None
    team_sigma[Year[11] + "-" + Team[i] + "-" + Side[0]] = None
    team_sigma[Year[12] + "-" + Team[i] + "-" + Side[0]] = None
    team_sigma[Year[13] + "-" + Team[i] + "-" + Side[0]] = None
    team_sigma[Year[0] + "-" + Team[i] + "-" + Side[1]] = None
    team_sigma[Year[1] + "-" + Team[i] + "-" + Side[1]] = None
    team_sigma[Year[2] + "-" + Team[i] + "-" + Side[1]] = None
    team_sigma[Year[3] + "-" + Team[i] + "-" + Side[1]] = None
    team_sigma[Year[4] + "-" + Team[i] + "-" + Side[1]] = None
    team_sigma[Year[5] + "-" + Team[i] + "-" + Side[1]] = None
    team_sigma[Year[6] + "-" + Team[i] + "-" + Side[1]] = None
    team_sigma[Year[7] + "-" + Team[i] + "-" + Side[1]] = None
    team_sigma[Year[8] + "-" + Team[i] + "-" + Side[1]] = None
    team_sigma[Year[9] + "-" + Team[i] + "-" + Side[1]] = None
    team_sigma[Year[10] + "-" + Team[i] + "-" + Side[1]] = None
    team_sigma[Year[11] + "-" + Team[i] + "-" + Side[1]] = None
    team_sigma[Year[12] + "-" + Team[i] + "-" + Side[1]] = None
    team_sigma[Year[13] + "-" + Team[i] + "-" + Side[1]] = None


# team_mu = {'ARI': None,
#            'ATL': None,
#            'BAL': None,
#            'BUF': None
#
#
# }
#
# team_phi = {'ARI': None,
#            'ATL': None,
#            'BAL': None,
#            'BUF': None
#
#            }
#
# team_sigma = {'ARI': None,
#            'ATL': None,
#            'BAL': None,
#            'BUF': None
#
#            }

Year_06 = [2006, 2006, 2006, 2006, 2006, 2006, 2006, 2006]
Team_06 = ['ATL', 'BAL', 'CIN', 'NE', 'NO', 'NYJ', 'PIT', 'SEA']
Value_06 = [2.5, 3, 3.5, 5.5, 5.5, 2.5, 4, 3]



Year_07 = [2007, 2007, 2007, 2007, 2007, 2007, 2007, 2007, 2007, 2007]
Team_07 = ['GB', 'HOU', 'JAC', 'NYJ', 'PIT', 'LAC', 'WAS', 'IND', 'DAL', 'NE']
Value_07 = [5.5, 2.5, 2.5, 2, 5, 5, 1.5, 5, 3, 7.5]

Year_08 = [2008, 2008, 2008, 2008, 2008, 2008, 2008, 2008]
Team_08 = ['DAL', 'GB', 'HOU', 'IND', 'NYJ', 'PHI', 'NYG', 'TEN']
Value_08 = [4.5, 2.5, 3, 7.5, 3, 3.5, 3.5, 3]

Year_09 = [2009, 2009, 2009, 2009, 2009, 2009, 2009, 2009, 2009, 2009, 2009, 2009]
Team_09 = ['ARI', 'ATL','BAL',
            'CIN', 'DAL', 'GB', 'HOU', 'IND',
            'MIN', 'NYG', 'PHI', 'PIT']
Value_09 = [4.5, 3.5, 2.5,
             2.5, 4.5, 5.5, 3,
             7.5, 5.5, 3.5, 3.5, 5]

Year_10 = [2010, 2010, 2010, 2010, 2010, 2010, 2010, 2010]
Team_10 = ['CIN', 'DAL', 'DET', 'GB', 'HOU', 'NE', 'PIT', 'LAC']
Value_10 = [2, 4.5, 3.5, 7.5, 3, 7.5, 5, 5.5]

Year_11 = [2011, 2011, 2011, 2011]
Team_11 = ['DAL', 'DET', 'HOU', 'GB']
Value_11 = [4.5, 3.5, 3, 7.5]


Year_12 = [2012, 2012, 2012, 2012]
Team_12 = ['DEN', 'DET' ,'GB', 'IND', ]
Value_12 = [7.5, 3.5, 7.5, 4.5,]


Year_13 = [2013, 2013, 2013, 2013]
Team_13 = ['CHI', 'DAL', 'DEN', 'GB']
Value_13 = [2.5, 4.5, 7.5, 7.5]

Year_14 = [2014, 2014, 2014, 2014, 2014, 2014]
Team_14 = ['DAL', 'DEN', 'GB', 'NE', 'NYG', 'LAC']
Value_14 = [4.5, 7.5, 7.5, 7.5, 3, 3.5]

Year_15 = [2015, 2015, 2015, 2015, 2015]
Team_15 = ['BAL', 'DET', 'GB', 'IND', 'PIT']
Value_15 = [2, 3.5, 7.5, 5.5, 6]

Year_16 = [2016, 2016, 2016, 2016, 2016, 2016, 2016, 2016]
Team_16 = ['CAR', 'DET', 'GB', 'IND', 'NE', 'PIT', 'SEA', 'DAL']
Value_16 = [3.5, 3.5, 7.5, 5.5, 7.5, 5.5, 5, 3.5]


Year_17 = [2017, 2017, 2017, 2017, 2017, 2017]
Team_17 = ['CAR', 'GB', 'HOU', 'IND', 'LAC', 'PHI']
Value_17 = [3.5, 7.5, 3, 5, 3, 5]

Year_18 = [2018, 2018, 2018, 2018, 2018, 2018]
Team_18 = ['CAR', 'DET', 'HOU', 'GB', 'PHI', 'SF']
Value_18 = [3.5, 3.5, 4.5, 5.5, 5, 3]


Year_19 = [2019, 2019, 2019, 2019, 2019, 2019, 2019, 2019]
Team_19 = ['ATL', 'CAR', 'DET', 'HOU', 'NE', 'NO', 'KC', 'BAL']
Value_19 = [4, 3.5, 3.5, 5, 4, 5, 7.5, 7.5]


Value_08 = [x + 0.5 for x in Value_08]

Value_09 = [x + 0.5 for x in Value_09]


Value_10 = [x + 1.0 for x in Value_10]

Value_11 = [x + 1.0 for x in Value_11]

Value_12 = [x + 1.5 for x in Value_12]

Value_13 = [x + 1.5 for x in Value_13]

Value_14 = [x + 2.0 for x in Value_14]

Value_15 = [x + 2.0 for x in Value_15]

Value_16 = [x + 2.0 for x in Value_16]

Value_17 = [x + 2.0 for x in Value_17]

Value_18 = [x + 2.0 for x in Value_18]

Value_19 = [x + 2.0 for x in Value_19]

Year = Year_06 + Year_07 + Year_08 + Year_09 + Year_10 + \
       Year_11 + Year_12 + Year_13 + Year_14 + Year_15 + Year_16 + Year_17 + Year_18 + Year_19


Team = Team_06 + Team_07 + Team_08 + Team_09 + Team_10 + Team_11 + Team_12 + \
       Team_13 + Team_14 + Team_15 + Team_16 + Team_17 + Team_18 + Team_19

Value = Value_06 + Value_07 + Value_08 + Value_09 + Value_10 + Value_11 + \
        Value_12 + Value_13 + Value_14 + Value_15 + Value_16 + Value_17 + Value_18 + Value_19


np.transpose(np.vstack([np.array(Team), np.array(Year), np.array(Value)]))

df = pd.read_csv("/home/ajit/spread.csv", header=0, index_col=0)
df1 = pd.read_csv("/home/ajit/Downloads/aggregate.csv", header=0, index_col=0)
df2 = pd.DataFrame(np.transpose(np.vstack([np.array(Team), np.array(Year), np.array(Value)])))
df1[['Year', 'Team.1', 'Week', 'DB', 'DL', 'FB', 'LB', 'OL', 'QB', 'RB', 'ST', 'TE', 'WR', 'AGL.1']].\
    fillna(0).to_csv('/home/ajit/agl_results.csv', sep=',', encoding='utf-8')
df1['Teams'] = df1.iloc[:, 1].astype(str) + "-" + (df1['Year'].astype(str))
df2.columns = ['Team', 'Year', 'Value']
df1 = df1[['Year', 'Team.1', 'Teams', 'Week', 'QB']]
print(df1['Team.1'].unique())
df2['Teams'] = df2.iloc[:, 0].astype(str) + "-" + df2.iloc[:, 1]

df1['Team.1'] = np.where(df1['Team.1'] == 'STL', 'LARM', df1['Team.1'])
df1['Team.1'] = np.where(df1['Team.1'] == 'LAR', 'LARM', df1['Team.1'])
df1['Team.1'] = np.where(df1['Team.1'] == 'SD', 'LAC', df1['Team.1'])
df1['Team.1'] = np.where(df1['Team.1'] == 'JAC', 'JAX', df1['Team.1'])
df1['Team.1'] = np.where(df1['Team.1'] == 'HOU ', 'HOU', df1['Team.1'])
df1['Team.1'] = np.where(df1['Team.1'] == 'NE ', 'NE', df1['Team.1'])

df3 = pd.merge(df1, df2, how='left', on=['Teams'])
df3 = df3.drop(['Teams', 'Year_y', 'Team'], axis=1)


df3.Value = df3.Value.fillna(0)
df3.columns = ['Year', 'Team', 'Week', 'QB', 'Value']
df3['Teams'] = df3['Team'].astype(str) + "-" + df3['Year'].astype(str) + '-' + df3['Week'].astype(str)
df3['Team'] = np.where(df3['Team'] == 'JAC', 'JAX', df3['Team'])


# df = df[['schedule_season', 'schedule_week', 'team_home', 'team_away', 'team_favorite_id', 'spread_favorite' ,
#                        'over_under_line', 'stadium_neutral']]

df['Teams'] = df['Team'].astype(str) + "-" + df['Year'].astype(str) + "-" + df['Week'].astype(str)
df4 = pd.merge(df, df3[['QB', 'Value', 'Teams']], how='left', on=['Teams'])


df4 = df4.drop(['Teams'], axis=1)

df4 = df4.fillna(0)

pd.set_option('display.max_columns', None)

df4['QB'] = np.where(df4['QB'] >= 1, 1, df4['QB'])
df4['Value'] = df4['Value'].astype(float)


# df4['Value'] = df4['Value'] * 0

# df4 = df4[df4['Year'] == 2019]
# df4 = df4[(df4['Week'] == 8) | (df4['Week'] == 9)]
# df4 = df4[(df4['Spread'] == -5.5) | (df4['Spread'] ==-5.0)]

df4['Spread'] = np.where(df4['Team'] != df4['Favorite'], -1.0 * df4['Spread'], df4['Spread'])

# df4 = df4.sort_values(by=['Year', 'Week', 'Favorite', 'Value'])


### FULL Injury Free ADJUSTMENT ####
# df4 = df4.sort_values(by=['Year', 'Team', 'QB'], ascending=False)
#
# df4['QB'] = np.where(df4['QB'] == 1, 1, 0)
#
# df4['Z_QB'] = np.where((df4['Year'] == df4['Year'].shift(-1)) &
#                         (df4['Team'] == df4['Team'].shift(-1)), df4['QB'].shift(-1), df4['QB'])
#
# # df4['QB'] = np.where(df4['QB'] == 1, 1, 0)
#
# df4['A_Spread'] = df4['Spread'] + df4['QB'] * df4['Value']
#
# df4['A_Over_Under'] = df4['Over_Under'] - df4['Value'] * abs(df4['QB'])

#### FULL TEAM VALUE ###
df4['Value'] = np.where((df4['Year'] == df4['Year'].shift(-1)) & (df4['Week'] == df4['Week'].shift(-1)) &
                        (df4['Favorite'] == df4['Favorite'].shift(-1)), df4['Value'].shift(-1), df4['Value'])

df4['QB'] = np.where((df4['Year'] == df4['Year'].shift(-1)) & (df4['Week'] == df4['Week'].shift(-1)) &
                        (df4['Favorite'] == df4['Favorite'].shift(-1)), -1 * df4['QB'].shift(-1), df4['QB'])


df4['A_Spread'] = df4['Spread'] - df4['QB'] * df4['Value']

df4['A_Over_Under'] = df4['Over_Under'] + df4['Value'] * abs(df4['QB'])




df4['New_Favorite'] = np.where((df4['Team'] == df4['Favorite']) & (df4['A_Spread'] > 0), df4['Opponent'],
                               df4['Favorite'])
df4['New_Favorite'] = np.where((df4['Team'] != df4['Favorite']) & (df4['A_Spread'] < 0), df4['Team'],
                               df4['New_Favorite'])


# df4['Offense'] = np.where(df4['Team'] == df4['Favorite'], (df4['A_Over_Under']/2) - (df4['A_Spread'])/2,
#                           (df4['A_Over_Under']/2) - (df4['A_Spread'])/2)

df4['Offense'] = (df4['A_Over_Under']/2) - (df4['A_Spread']/2)

# df4['Defense'] = np.where(df4['Team'] == df4['Favorite'], (df4['A_Over_Under']/2) - (df4['A_Spread'])/2,
#                           (df4['A_Over_Under']/2) + (df4['A_Spread'])/2)

df4['Defense'] = (df4['A_Over_Under']/2) + (df4['A_Spread']/2)

df4['Offense'] = np.where((df4['Home'] == 1) & (df4['Stadium'] == False), df4['Offense'] - 1.5, df4['Offense'])
df4['Offense'] = np.where((df4['Home'] == 0) & (df4['Stadium'] == False), df4['Offense'] + 1.5, df4['Offense'])

df4['Defense'] = np.where((df4['Home'] == 1) & (df4['Stadium'] == False), df4['Defense'] + 1.5, df4['Defense'])
df4['Defense'] = np.where((df4['Home'] == 0) & (df4['Stadium'] == False), df4['Defense'] - 1.5, df4['Defense'])

df4 = df4[df4['Year'] > 2005]


#
df4['Offense_over_Avg'] = df4['Offense'] / np.mean(df4['Offense'])
df4['Defense_over_Avg'] = 1/(df4['Defense'] / np.mean(df4['Defense']))

df4['Value'] = df4['Value'].fillna(0)




###  OVER AVG by Year #####


# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2006, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] == 2006]), df4['Offense'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2007, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] == 2007]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2008, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] == 2008]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2009, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] == 2009]), df4['Offense_over_Avg'])
#
#
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2010, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] == 2010]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2011, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] == 2011]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2012, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] == 2012]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2013, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] == 2013]), df4['Offense_over_Avg'])
#
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2014, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] == 2014]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2015, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] == 2015]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2016, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] == 2016]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2017, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] == 2017]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2018, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] == 2018]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2019, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] == 2019]), df4['Offense_over_Avg'])
#
#
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2006, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] == 2006])), df4['Defense'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2007, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] == 2007])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2008, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] == 2008])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2009, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] == 2009])), df4['Defense_over_Avg'])
#
#
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2010, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] == 2010])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2011, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] == 2011])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2012, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] == 2012])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2013, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] == 2013])), df4['Defense_over_Avg'])
#
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2014, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] == 2014])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2015, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] == 2015])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2016, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] == 2016])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2017, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] == 2017])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2018, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] == 2018])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2019, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] == 2019])), df4['Defense_over_Avg'])

###  OVER AVG by Multi Year #####

# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2006, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] == 2006]), df4['Offense'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2007, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] < 2008]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2008, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] < 2009]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2009, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] >2006]), df4['Offense_over_Avg'])
#
#
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2010, df4['Offense'] / np.mean(df4['Offense'][df4['Year']  > 2007]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2011, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] > 2008]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2012, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] > 2009]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2013, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] > 2010]), df4['Offense_over_Avg'])
#
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2014, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] > 2011]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2015, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] > 2012]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2016, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] > 2013]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2017, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] > 2014]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2018, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] > 2015]), df4['Offense_over_Avg'])
# df4['Offense_over_Avg'] = np.where(df4['Year'] == 2019, df4['Offense'] / np.mean(df4['Offense'][df4['Year'] > 2017]), df4['Offense_over_Avg'])
#
#
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2006, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] == 2006])), df4['Defense'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2007, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] < 2008])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2008, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] < 2009])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2009, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] > 2006])), df4['Defense_over_Avg'])
#
#
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2010, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] > 2007])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2011, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] > 2008])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2012, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] > 2009])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2013, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] > 2010])), df4['Defense_over_Avg'])
#
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2014, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] > 2011])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2015, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] > 2012])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2016, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] > 2013])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2017, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] > 2014])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2018, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] > 2015])), df4['Defense_over_Avg'])
# df4['Defense_over_Avg'] = np.where(df4['Year'] == 2019, 1/(df4['Defense'] / np.mean(df4['Defense'][df4['Year'] > 2016])), df4['Defense_over_Avg'])


df5 = df4[df4['Home'] == 1]


df5['QB'] = np.where(df5['QB'] > 0.5, df5['QB'], 0)


df5[['Year', 'Week', 'Team', 'Spread', 'Over_Under', 'Temperature', 'Wind', 'Humidity', 'Weather_Detail', 'QB', 'Value',
     'Stadium_Name']]\
            .to_csv('/home/ajit/spread_results.csv', sep=',', encoding='utf-8')
df6 = df4[df4['Home'] == 0]




df7 = pd.DataFrame()
df8 = pd.DataFrame()

df7['Team1'] = df5['Year'].astype(str) + "-" + df5['Team'] + '-' + 'O'
df7['Rating_1'] = df5['Offense_over_Avg']
df7['Team2'] = 'x'
df7['Team2'][0:] = df6['Year'][0:].astype(str) + "-" + df6['Team'][0:] + '-' + 'D'
df7['Rating_2'] = 0
df7['Rating_2'][0:] = df6['Defense_over_Avg'][0:]
df7['Week'] = df5['Week'][0:]
df7['Value'] = df4['Value']
df8['Team1'] = df5['Year'].astype(str) + '-' + df5['Team'] + '-' + 'D'
df8['Rating_1'] = df5['Defense_over_Avg']
df8['Team2'] = 'x'
df8['Team2'][0:] = df6['Year'][0:].astype(str) + '-' + df6['Team'][0:] + '-' + 'O'
df8['Rating_2'] = 0
df8['Rating_2'][0:] = df6['Offense_over_Avg'][0:]
df8['Week'] = 0
df8['Week'] = df6['Week'][0:]
df8['Value'] = df4['Value']


df = pd.concat([df7, df8], axis=0)

df['score'] = 0
df['score'][0:] = (df['Rating_1'][0:] - df['Rating_2'][0:]) * 7

# df = df[(df['Team1'] == '2007-NE-O') | (df['Team2'] == '2007-NE-O')]

df = shuffle(df)
df = shuffle(df)
df = shuffle(df)

# df['score'] = df['score'] * 5

# df7['Team'] = df7['Team1']
# df8['Team'] = df8['Team1']

def win_probability(p1, p2):
    diff = p1 - p2
    p = 1 - 1 / (1 + 10 ** (diff / 400.0))
    return p


# print(win_probability(1500, 1500))
env = Glicko2(tau=0.5)


for i in range(0, len(df)):

    # print(df.iloc[i, 0])
    # print(df.iloc[i, 2])




    # print df.iloc[i,4], df.iloc[i,5]
    r1, r2 = env.create_rating_from_df(df.iloc[i, 0], df.iloc[i, 2])
    rated_1 = env.rate_df_1(r1, r2, score=df.iloc[i, 6], adv=0, qbadv=0, home=0)
    rated_2 = env.rate_df_1(r2, r1, score=-1*df.iloc[i, 6], adv=-0, qbadv=0, home=0)

    # if np.isnan(rated_1.mu) == True:
    #     print(df.iloc[i,0])
    #     print(df.iloc[i, 2])
    #
    # print(rated_1.mu)
    # print(rated_2.mu)

    team_mu[df.iloc[i, 0]] = rated_1.mu

    team_phi[df.iloc[i, 0]] = rated_1.phi

    team_sigma[df.iloc[i, 0]] = rated_1.sigma

    team_mu[df.iloc[i, 2]] = rated_2.mu

    team_phi[df.iloc[i, 2]] = rated_2.phi

    team_sigma[df.iloc[i, 2]] = rated_2.sigma


    #
    # print(team_mu[df.iloc[i, 0]])
    # print(team_mu[df.iloc[i, 2]])

sorted_week_x = sorted(team_mu.items(), key=operator.itemgetter(1))


#### KC 2540.132122124398, 2371.847691486461


print(sorted_week_x[0:5], sorted_week_x[-5:])
print(team_mu['2019-KC-O'])
print(team_mu['2007-NE-O'])


# with open('/home/ajit/team_mu_injuries.json', 'w') as fp:
#     json.dump(team_mu, fp)

# with open('/home/ajit/team_mu.json', 'w') as fp:
#     json.dump(team_mu, fp)
#
#
# with open('/home/ajit/team_mu.json') as json_file:
#     data_1 = json.load(json_file)
#
#
# with open('/home/ajit/team_mu_injuries.json') as json_file:
#     data_2 = json.load(json_file)
# #
# dfz = pd.DataFrame(list(data_1.items()),columns = ['Team', 'Non_Injury_Value'])
# dfx = pd.DataFrame(list(data_2.items()),columns = ['Team', 'Injury_Value'])
# dfz['Injury_Value'] = dfx['Injury_Value']
#
#
# dfz.to_csv('/home/ajit/team_ratings.csv', sep=',', encoding='utf-8')
