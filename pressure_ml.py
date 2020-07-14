import pandas as pd
import numpy as np
# # from sklearn.ensemble import RandomForestClassifier
from sklearn.preprocessing import LabelEncoder
# # from sklearn.preprocessing import OneHotEncoder
# # from sklearn.metrics import accuracy_score,  f1_score, roc_curve, auc, roc_auc_score, confusion_matrix
# # from sklearn.feature_extraction.text import CountVectorizer
import tensorflow as tf
from sklearn.utils import shuffle
# from sklearn import preprocessing
# import os
# from sklearn.utils import resample
# from imblearn.over_sampling import SMOTE
import re
from mlp_utilities import train_validate_test_split
from classification import MLP
from imblearn.over_sampling import SMOTE, ADASYN, SVMSMOTE, BorderlineSMOTE, KMeansSMOTE
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score,  f1_score, roc_curve, auc, roc_auc_score, confusion_matrix
from sklearn.model_selection import StratifiedKFold
from sklearn.metrics import average_precision_score
from sklearn.model_selection import GridSearchCV, RandomizedSearchCV
import scikitplot as skplt
import matplotlib.pyplot as plt
from sklearn.linear_model import LogisticRegression
from sklearn import metrics
import os

df1 = pd.read_csv('/home/ajit/pressure_files/pressure_project.csv', engine='python')



# df1_columns = ['R', 'RECEPT', 'PP', 'YEAR', 'WEEK', 'QTR', 'HOME', 'AWAY', 'GAP', 'OFFENSE', 'DEFENSE', 'ZONE',
#            'DOWN', 'TOGO', 'RB', 'WR', 'TE', 'RUSH', 'BLOCK', 'Yardage', 'Yard_Diff', 'QBRs',
#            'PlaysDefense', 'TimeDifference', 'TimeDefense', 'Shotgun', 'NoHuddle', 'Fleaflicker',
#            'Screen', 'Option', 'Odd', 'Hit', 'PlayAction', 'Boot', 'pressure_lag_1', 'pressure_lag_2',
#            'pressure_lag_3', 'pressure_lag_4', 'pressure_lag_5', 'pressure_lag_6', 'pressure_lag_7',
#            'pressure_lag_8', 'Slot', 'Trips', 'Empty', 'Single', 'Bunch', 'Twins', 'Stacked', 'I_Formation',
#            'Offset', 'coverage_1', 'coverage_2', 'coverage_3', 'Play_Result_1', 'Play_Result_2', 'Play_Result_3',
#            'TimeRunning', 'H', 'GS', 'PC', 'Possession_Diff', 'Scramble_1', 'Scramble_2', 'Scramble_3', 'Hit_1',
#            'Hit_2', 'Hit_3']


df1_columns = ['R', 'YEAR', 'NULL.', 'CHAL', 'XTRA_NOTE', 'WEEK', 'QTR', 'PLINE', 'HOME', 'AWAY',
               'GAP', 'OFFENSE', 'DEFENSE', 'ZONE', 'PLTYPE', 'PLAYER', 'YARDS',
               'RECEPT', 'DIRECTION', 'INTENDED', 'DOWN', 'TOGO', 'YDTM', 'ACYDL',
               'RB', 'WR', 'TE', 'FORMATION', 'RUSH', 'BLOCK', 'PA', 'QB_Move',
               'Pass_Pressure', 'PLAY_DESIGN', 'PYD', 'YAC', 'REASON', 'Reason_Player',
               'BROKEN_TACKLES', 'XTRA_COMMENT', 'Time', 'Defender_1', 'Defender_2',
               'HIT', 'ESPN_PRESSURE', 'SIS_PRESSURE', 'FO_Pressure', 'PP', 'Times',
               'QBRs', 'Coverage', 'Play', 'Yardage', 'Yard_Diff', 'Penalty', 'PlaysDefense',
                'Timing', 'TimeDifference', 'TimeDefense', 'Shotgun', 'NoHuddle',
                'Fleaflicker', 'Screen', 'Short', 'Option', 'Odd', 'Maybe', 'Hit',
                'PlayAction', 'Boot', 'KEEP', 'Scramble', 'QBR', 'PlayResult', 'O_KEY', 'D_KEY',
                'pressure_lag_1', 'pressure_lag_2', 'pressure_lag_3', 'pressure_lag_4',
                'pressure_lag_5', 'pressure_lag_6', 'pressure_lag_7', 'pressure_lag_8',
                 'Slot', 'Trips', 'Empty', 'Single', 'Bunch', 'Twins', 'Stacked', 'I_Formation', 'Offset', 'Plays',
               'Play_Type',  'Play_Result_1', 'Play_Result_2', 'Play_Result_3', 'H', 'GS', 'PC',
                'Possession_Diff', 'Scramble_1', 'Scramble_2', 'Scramble_3', 'Hit_1',
                'Hit_2', 'Hit_3', 'O', 'D',
               ]


df1 = df1[df1_columns]


df1['OFFENSE'] = np.where(df1['OFFENSE'] == 'JAC', 'JAX', df1['OFFENSE'])
df1['DEFENSE'] = np.where(df1['DEFENSE'] == 'JAC', 'JAX', df1['DEFENSE'])

df2_columns = ['R', 'QBRs', 'WEEK', 'YEAR', 'Short', 'Screen', 'Weighted_Rolling_Pressure', 'Weighted_Rolling_Hit',
               'Weighted_Rolling_PYD', 'Weighted_Rolling_Short',
               'Weighted_Rolling_Screen']

df2 = pd.read_csv('/home/ajit/pressure_files/qb_stats.csv', engine='python')

df2 = df2[df2_columns]

df2.columns = ['R', 'QBRs', 'WEEK', 'YEAR', 'Short', 'Screen', 'QB_Weighted_Rolling_Pressure', 'QB_Weighted_Rolling_Hit',
               'QB_Weighted_Rolling_PYD', 'QB_Weighted_Rolling_Short',
               'QB_Weighted_Rolling_Screen']

df2['Key'] = df2['QBRs'] + "-" + df2['YEAR'].astype(str) + "-" + df2['WEEK'].astype(str)


df3 = pd.read_csv('/home/ajit/pressure_files/agl_results.csv', engine='python')

df3_columns = ['Team.1', 'Week', 'Year', 'DB', 'DL', 'LB', 'OL', 'QB', 'RB', 'ST', 'TE', 'WR', 'AGL.1']

df3 = df3[df3_columns]

df3.columns = ['Team', 'Week', 'Year', 'DB', 'DL', 'LB', 'OL', 'QB', 'RB', 'ST', 'TE', 'WR', 'AGL']

df3['Team'] = np.where(df3['Team'] == 'JAC', 'JAX', df3['Team'])
df3['Team'] = np.where(df3['Team'] == 'STL', 'LARM', df3['Team'])
df3['Team'] = np.where(df3['Team'] == 'SD', 'LAC', df3['Team'])
df3['Team'] = np.where(df3['Team'] == 'LAR', 'LARM', df3['Team'])

df3_a = df3[['Team', 'Week', 'Year', 'OL', 'QB', 'RB', 'TE', 'WR']]
df3_b = df3[['Team', 'Week', 'Year', 'DB', 'DL', 'LB']]

df3_a.columns = ['Team', 'Week', 'Year', 'OL_agl', 'QB_agl', 'RB_agl', 'TE_agl', 'WR_agl']
df3_b.columns = ['Team', 'Week', 'Year', 'DB_agl', 'DL_agl', 'LB_agl']
df3_a['Key'] = df3_a['Team'] + "-" + df3_a['Year'].astype(str) + "-" + df3_a['Week'].astype(str)
df3_b['Key'] = df3_b['Team'] + "-" + df3_b['Year'].astype(str) + "-" + df3_b['Week'].astype(str)



df4 = pd.read_csv('/home/ajit/pressure_files/spread_results.csv', engine='python')

df4_columns = ['Year', 'Week', 'Team', 'Spread', 'Over_Under', 'Temperature', 'Wind',
               'Humidity', 'Weather_Detail', 'Value', 'Stadium_Name', 'QB']

df4 = df4[df4_columns]

df4['Key'] = df4['Team'] + "-" + df4['Year'].astype(str) + "-" + df4['Week'].astype(str)

df5 = pd.read_csv('/home/ajit/pressure_files/team_ratings.csv', engine='python')

df5_columns = ['Team', 'Non_Injury_Value', 'Injury_Value']

df5 = df5[df5_columns]

df5['Side'] = df5['Team'].str.split("-", expand=True)[2]

df5_a = df5[df5['Side'] == 'O']
df5_b = df5[df5['Side'] == 'D']

df5_a.columns = ['Team', 'Offense_Non_Injury_Value', 'Offense_Injury_Value', 'Side']
df5_b.columns = ['Team', 'Defense_Value', 'Defense_Injury_Value', 'Side']


df1['Team'] = df1['YEAR'].astype(str) + "-" + df1['OFFENSE'] + "-" + "O"

df6 = pd.merge(df1, df5_a[['Team', 'Offense_Non_Injury_Value', 'Offense_Injury_Value']], how='inner', on=['Team'])
df6 = df6.drop(['Team'], axis=1)

df6['Team'] = df6['YEAR'].astype(str) + "-" + df6['DEFENSE'] + "-" + "D"

df6 = pd.merge(df6, df5_b[['Team', 'Defense_Value']], how='inner', on=['Team'])
df6 = df6.drop(['Team'], axis=1)

df6['Key'] = df6['QBRs'] + "-" + df6['YEAR'].astype(str) + "-" + df6['WEEK'].astype(str)

df7 = pd.merge(df6, df2[['Key', 'QB_Weighted_Rolling_Pressure', 'QB_Weighted_Rolling_Hit', 'QB_Weighted_Rolling_PYD',
                         'QB_Weighted_Rolling_Short', 'QB_Weighted_Rolling_Screen']], how='inner', on=['Key'])

df7 = df7.drop(['Key'], axis=1)

df7['Key'] = df7['HOME'] + "-" + df7['YEAR'].astype(str) + "-" + df7['WEEK'].astype(str)

df8 = pd.merge(df7, df4[['Key', 'Spread', 'Over_Under', 'Temperature', 'Wind', 'Humidity', 'Weather_Detail', 'Value',
                         'QB', 'Stadium_Name']],
               how='inner', on=['Key'])

df8 = df8.drop(['Key'], axis=1)

df8['Key'] = df8['OFFENSE'] + "-" + df8['YEAR'].astype(str) + "-" + df8['WEEK'].astype(str)

df8['Spread'] = np.where(df8['OFFENSE'] != df8['HOME'], -1 * df8['Spread'], df8['Spread'])

df9 = pd.merge(df8, df3_a[['Key', 'OL_agl', 'QB_agl', 'RB_agl', 'TE_agl', 'WR_agl']],
               how='inner', on=['Key'])

df10 = pd.merge(df9, df3_b[['Key', 'DB_agl', 'DL_agl', 'LB_agl']],
               how='inner', on=['Key'])

df10['Value'] = np.where(df10['OFFENSE'] != df10['HOME'], 0, df10['Value'])


df10['Offense_Value'] = np.where((df10['Value'] > 0) & (df10['QB'] > 0), df10['Offense_Non_Injury_Value'] -
                                 (df10['Value']/9.5) * 0.5 * df10['Offense_Non_Injury_Value'],
                                 df10['Offense_Non_Injury_Value'])

# df10['Team_Rating']


df10['Stadium_Name'] = np.where(df10['Stadium_Name'] == 'FedEx Field', 'FedExField', df10['Stadium_Name'])

df10['Stadium_Name'] = np.where(df10['Stadium_Name'] == 'Mercedes-Benz Stadium', 'Mercedes-Benz Superdome',
                                df10['Stadium_Name'])

df10['Stadium_Name'] = np.where(df10['Stadium_Name'] == 'Tottenham Stadium', 'Tottenham Hotspur Stadium',
                                df10['Stadium_Name'])


df11 = pd.read_csv('/home/ajit/pressure_files/stadium_stuff.csv', engine='python')


df11_columns = ['stadium_name', 'stadium_type', 'stadium_weather_type', 'stadium_capacity', 'stadium_surface']
df11 = df11[df11_columns]

df11.columns = ['Stadium_Name', 'Stadium_Type', 'Stadium_weather_type', 'Stadium_capacity', 'Stadium_surface']


list1 = df10['Stadium_Name'].tolist()
list2 = df11['Stadium_Name'].tolist()


def list_diff(list1, list2):
    return (list(set(list1) - set(list2)))

# Test Input

x  = list_diff(list1, list2)

df12 = pd.merge(df10, df11,
               how='inner', on=['Stadium_Name'])

df12 = df12.drop(['HOME', 'AWAY', 'Offense_Non_Injury_Value',
                  'Offense_Injury_Value', 'Value', 'Key'], axis=1)



dfa = pd.read_csv('/home/ajit/pressure_files/offense_stats.csv', engine='python')
dfb = pd.read_csv('/home/ajit/pressure_files/defense_stats.csv', engine='python')

dfa.columns = ['R', 'YEAR', 'WEEK', 'OFFENSE',
               'O_Pressure_Rate', 'O_Running_Pressure_Rate',
               'O_Hit_Rate', 'O_Running_Hit_Rate',
               'O_Pass_Depth', 'O_Running_Pass_Depth',
               'O_Short_Att', 'O_Running_Short_Att',
               'O_Screen_Att', 'O_Running_Screen_Att']

dfb.columns = ['R', 'YEAR', 'WEEK', 'DEFENSE',
               'D_Pressure_Rate', 'D_Running_Pressure_Rate',
               'D_Hit_Rate', 'D_Running_Hit_Rate',
               'D_Pass_Depth', 'D_Running_Pass_Depth',
               'D_Short_Att', 'D_Running_Short_Att',
               'D_Screen_Att', 'D_Running_Screen_Att']


dfa['OFFENSE'] = np.where(dfa['OFFENSE'] == 'JAC', 'JAX', dfa['OFFENSE'])
dfb['DEFENSE'] = np.where(dfb['DEFENSE'] == 'JAC', 'JAX', dfb['DEFENSE'])
dfa['Key'] = dfa['OFFENSE'] + "-" + dfa['YEAR'].astype(str) + "-" + dfa['WEEK'].astype(str)
df12['Key'] = df12['OFFENSE'] + "-" + df12['YEAR'].astype(str) + "-" + df12['WEEK'].astype(str)

df12 = pd.merge(df12, dfa[['O_Pressure_Rate', 'O_Running_Pressure_Rate',
                           'O_Hit_Rate', 'O_Running_Hit_Rate',
                           'O_Pass_Depth', 'O_Running_Pass_Depth',
                            'O_Short_Att', 'O_Running_Short_Att',
                           'O_Screen_Att', 'O_Running_Screen_Att',
                           'Key']],
               how='inner', on=['Key'])

df12 = df12.drop(['Key'], axis=1)

dfb['Key'] = dfb['DEFENSE'] + "-" + dfb['YEAR'].astype(str) + "-" + dfb['WEEK'].astype(str)
df12['Key'] = df12['DEFENSE'] + "-" + df12['YEAR'].astype(str) + "-" + df12['WEEK'].astype(str)

df12 = pd.merge(df12, dfb[['D_Pressure_Rate', 'D_Running_Pressure_Rate',
                           'D_Hit_Rate', 'D_Running_Hit_Rate',
                           'D_Pass_Depth', 'D_Running_Pass_Depth',
                           'D_Short_Att', 'D_Running_Short_Att',
                           'D_Screen_Att', 'D_Running_Screen_Att',
                           'Key']],
               how='inner', on=['Key'])

df12 = df12.drop(['Key'], axis=1)

df12 = df12.sort_values(by=['R'])


# df12['O_Pressure_Rate'] = (df12['O_Pressure_Rate'] - np.mean(df12['O_Pressure_Rate']))/np.std(df12["O_Pressure_Rate"])
# df12['O_Running_Pressure_Rate'] = (df12['O_Running_Pressure_Rate'] -
#                                    np.mean(df12['O_Running_Pressure_Rate']))/np.std(df12["O_Running_Pressure_Rate"])
# df12['GS'] = (df12['O_Pressure_Rate'] - np.mean(df12['GS']))/np.std(df12["GS"])
# df12['PC'] = (df12['PC'] - np.mean(df12['GS']))/np.std(df12["PC"])
#
# g = df12[(df12['DEFENSE']=='NE') & (df12['YEAR']==2019)]



df12['ZONE'] = df12['ZONE'].fillna("RED2")
#

df12['Weather_Detail'].astype(str)
df12['Weather_Detail'] = df12['Weather_Detail'].str.lower()


df12['fog'] = np.where(df12['Weather_Detail'].str.contains('fog') == True, 1, 0)
df12['rain'] = np.where(df12['Weather_Detail'].str.contains('rain') == True, 1, 0)
df12['snow'] = np.where(df12['Weather_Detail'].str.contains('snow') == True, 1, 0)

df12['deep_1'] = np.where(df12['Play_Result_1'].str.contains('deep') == True, 1, 0)
df12['deep_2'] = np.where(df12['Play_Result_2'].str.contains('deep') == True, 1, 0)
df12['deep_3'] = np.where(df12['Play_Result_3'].str.contains('deep') == True, 1, 0)


df12['complete_1'] = np.where(df12['Play_Result_1'].str.contains('complete') == True, 1, 0)
df12['complete_2'] = np.where(df12['Play_Result_2'].str.contains('complete') == True, 1, 0)
df12['complete_3'] = np.where(df12['Play_Result_3'].str.contains('complete') == True, 1, 0)

df12['complete_1'] = np.where(df12['Play_Result_1'].str.contains('DPI') == True, 1, df12['complete_1'])
df12['complete_2'] = np.where(df12['Play_Result_2'].str.contains('DPI') == True, 1, df12['complete_2'])
df12['complete_3'] = np.where(df12['Play_Result_3'].str.contains('DPI') == True, 1, df12['complete_3'])


df12['incomplete_1'] = np.where(df12['Play_Result_1'].str.contains('incomplete') == True, 1, 0)
df12['incomplete_2'] = np.where(df12['Play_Result_2'].str.contains('incomplete') == True, 1, 0)
df12['incomplete_3'] = np.where(df12['Play_Result_3'].str.contains('incomplete') == True, 1, 0)


df12['sacked_1'] = np.where(df12['Play_Result_1'].str.contains('sacked') == True, 1, 0)
df12['sacked_2'] = np.where(df12['Play_Result_2'].str.contains('sacked') == True, 1, 0)
df12['sacked_3'] = np.where(df12['Play_Result_3'].str.contains('sacked') == True, 1, 0)

df12['interception_1'] = np.where(df12['Play_Result_1'].str.contains('interception') == True, 1, 0)
df12['interception_2'] = np.where(df12['Play_Result_2'].str.contains('interception') == True, 1, 0)
df12['interception_3'] = np.where(df12['Play_Result_3'].str.contains('interception') == True, 1, 0)

# df12['DPI_1'] = np.where(df12['Play_Result_1'].str.contains('DPI') == True, 1, 0)
# df12['DPI_2'] = np.where(df12['Play_Result_2'].str.contains('DPI') == True, 1, 0)
# df12['DPI_3'] = np.where(df12['Play_Result_3'].str.contains('DPI') == True, 1, 0)


df12.RB = df12.RB.fillna(1)
df12.WR = df12.WR.fillna(3)
df12.TE = df12.TE.fillna(1)
df12['BLOCK'] = np.where(df12.BLOCK.isnull() == True, 10-df12.WR - df12.TE - df12.RB, df12.BLOCK)
df12['RUSH'] = df12.RUSH.fillna(4)
label_encoder = LabelEncoder()
#
df13 = pd.get_dummies(df12.YEAR.astype(str))
df14 = pd.get_dummies(df12.ZONE.astype(str))
# df15 = pd.get_dummies(df12.Play_Result_1.astype(str))
# df16 = pd.get_dummies(df12.Play_Result_2.astype(str))
df15 = pd.get_dummies(df12.DOWN.astype(str))
df16 = pd.get_dummies(df12.Stadium_Type.astype(str))
df17 = pd.get_dummies(df12.Stadium_weather_type.astype(str))
df18 = pd.get_dummies(df12.Stadium_surface.astype(str))
df19 = pd.get_dummies(df12.QTR.astype(str))
# df20 = pd.get_dummies(df12.QBRs.astype(str))

# df12 = df12.drop(['Fleaflicker', 'RECEPT', 'YEAR', 'ZONE', 'QTR', 'Play_Result_1', 'Play_Result_2', 'Play_Result_3',
#                   'Weather_Detail', 'Stadium_Name', 'Stadium_weather_type', 'Stadium_surface', 'Stadium_Type',
#                   'Option', 'Odd', 'QBRs'],
#                  axis=1)


frames = [df12, df13, df14, df15, df16, df17, df18, df19]


keep_columns = ['R', 'YEAR',  'WEEK', 'OFFENSE', 'DEFENSE',  'PP']

result = pd.concat(frames, axis=1)


result = result.drop(['YEAR', 'NULL.', 'CHAL', 'XTRA_NOTE', 'WEEK', 'QTR', 'PLINE', 'Boot',
       'ZONE', 'PLTYPE', 'PLAYER', 'YARDS', 'RECEPT', 'DIRECTION', 'INTENDED',
       'DOWN', 'TOGO', 'YDTM', 'ACYDL', 'FORMATION', 'PA', 'QB_Move', 'Pass_Pressure', 'PLAY_DESIGN', 'PYD', 'YAC',
       'REASON', 'Reason_Player', 'BROKEN_TACKLES', 'XTRA_COMMENT', 'Time',
       'Defender_1', 'Defender_2', 'HIT', 'ESPN_PRESSURE', 'SIS_PRESSURE',
       'FO_Pressure', 'Times', 'QBRs', 'Coverage', 'Play',  'Penalty', 'Fleaflicker', 'Option', 'Odd', 'Maybe',
       'Hit', 'KEEP', 'Scramble', 'QBR', 'PlayResult',
       'O_KEY', 'D_KEY', 'Slot', 'Trips', 'Single', 'Bunch', 'Twins', 'Stacked', 'I_Formation',
       'Offset', 'Plays', 'Play_Type', 'Play_Result_1', 'Play_Result_2',
       'Play_Result_3',  'O', 'D',  'Weather_Detail', 'Stadium_Name',  'Stadium_Type', 'Stadium_weather_type',
       'Stadium_capacity', 'Stadium_surface', 'R', 'QB', 'OFFENSE', 'DEFENSE'],
                 axis=1)



#

offense_columns = ['Defense_Value',  'D_Pressure_Rate', 'D_Running_Pressure_Rate',
                   'D_Hit_Rate', 'D_Running_Hit_Rate', 'D_Pass_Depth', 'D_Running_Pass_Depth', 'D_Short_Att',
                   'D_Running_Short_Att', 'D_Screen_Att', 'D_Running_Screen_Att']


defense_columns = [
       'GS', 'PC', 'QB_Weighted_Rolling_Pressure',
       'QB_Weighted_Rolling_Hit', 'QB_Weighted_Rolling_PYD',
       'QB_Weighted_Rolling_Short', 'QB_Weighted_Rolling_Screen',
        'Offense_Value', 'O_Pressure_Rate', 'O_Running_Pressure_Rate',
       'O_Hit_Rate', 'O_Running_Hit_Rate', 'O_Pass_Depth',
       'O_Running_Pass_Depth', 'O_Short_Att', 'O_Running_Short_Att',
       'O_Screen_Att', 'O_Running_Screen_Att']


regular = result.copy()

offense = result.copy()

defense = result.copy()


regular = regular.drop(['PP'], axis=1)

offense = offense.drop(['PP'], axis=1)

defense = defense.drop(['PP'], axis=1)

result = shuffle(result)
result = shuffle(result)
result = shuffle(result)

result = shuffle(result)
label = result.PP
# label = shuffle(label)
result = result.drop(['PP'], axis=1)

#
#
years_list = ['2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013', '2014', '2015', '2016',
              '2017', '2018', '2019']


def offense_frames(df, year):
    df1 = df.copy()

    df1 = df1[df1[year] == 1]
    for i in df1.columns:
        if i in offense_columns:
            df[i] = np.where(df[year] == 1, np.quantile(df1[i], [0.532]), df[i])
        else:
            continue

    return df
#
#


def defense_frames(df, year):
    df1 = df.copy()

    df1 = df1[df1[year] == 1]
    for i in df1.columns:
        if i in defense_columns:
            df[i] = np.where(df[year] == 1, np.quantile(df1[i], [0.598]), df[i])
        else:
            continue

    return df


for year in years_list:
    offense = offense_frames(offense, year)
    defense = defense_frames(defense, year)


train_x, train_y, valid_x, valid_y, test_x, test_y = train_validate_test_split(result, label, train_percent=0.70,
                                                                               validate_percent=0.15)


sm = SMOTE(n_jobs=-1, sampling_strategy='all')
# sm = ADASYN(random_state=5, n_jobs=-1)
# sm = SVMSMOTE(random_state=5, n_jobs=-1, k_neighbors=10)
# sm = BorderlineSMOTE(random_state=5, n_jobs=-1)
# sm = KMeansSMOTE(random_state=5, n_jobs=-1)
# SVMSMOTE, BorderlineSMOTE, KMeansSMOTE


# # #


train_x_res, train_y_res = sm.fit_sample(np.array(train_x), np.array(train_y.iloc[:]))


# clf = RandomForestClassifier(random_state=0)
#
# clf.fit(train_x_res, train_y_res)
#
# y_pred = clf.predict(test_x)
# # print('Accuracy of logistic regression classifier on test set: {:.2f}'.format(logreg.score(test_x, test_y)))
#
# confusion_matrix = confusion_matrix(test_y, y_pred)
#
# auc_score = roc_auc_score(test_y, y_pred)
# print('AUC of logistic regression classifier on test set: {:.2f}'.format(auc_score))
# print(confusion_matrix)
#

# train_x_res = train_x_res[:1000]
# train_y_res = train_x_res[:1000]
#

#
# logreg = LogisticRegression()
# logreg.fit(train_x_res, train_y_res)
#
# y_pred = logreg.predict(test_x)
# print('Accuracy of logistic regression classifier on test set: {:.2f}'.format(logreg.score(test_x, test_y)))
#
# confusion_matrix = confusion_matrix(test_y, y_pred)
#
# auc_score = roc_auc_score(test_y, y_pred)
# print('AUC of logistic regression classifier on test set: {:.2f}'.format(auc_score))
# print(confusion_matrix)

#


model = MLP(data=train_x, label=pd.get_dummies(np.array(train_y)),
            number_of_hidden_units_1=1000, number_of_hidden_units_2=1000, number_of_hidden_units_3=1000,
            number_of_hidden_units_4=1000, number_of_hidden_units_5=1000,
            dropout=0.4, l1=0.25, l2=0.25, beta=0.25, num_epochs=100,
            model_dir='/home/ajit/pressure_files/tensorflow_models', model_name='pressure_model')


# training_results = model.fit(train_x_res, pd.get_dummies(np.array(train_y_res)), valid_x,
#                              pd.get_dummies(np.array(valid_y)),
#                              test_x, pd.get_dummies(np.array(test_y)), transformation='min_max')

model.load_model(train_x_res, hidden_1=1000, hidden_2=1000, hidden_3=1000, hidden_4=1000, hidden_5=1000,
                 num_iterations=1000, is_training_pl=False,
                 model_path=os.path.join('/home/ajit/pressure_files/tensorflow_models', 'pressure_model'))

regular_prob, regular_pred = model.scoring(regular, train_x_res, transformation='min_max')

offense_prob, offense_pred = model.scoring(offense, train_x_res, transformation='min_max')

defense_prob, defense_pred = model.scoring(defense, train_x_res, transformation='min_max')


df_final = df12[keep_columns]

df_final = pd.concat([df_final, pd.Series(regular_prob[:, 1]), pd.Series(regular_pred), pd.Series(offense_prob[:, 1]),
                      pd.Series(offense_pred), pd.Series(defense_prob[:, 1]), pd.Series(defense_pred)],
                     axis=1)


df_final.columns = ['R', 'YEAR', 'WEEK', 'OFFENSE', 'DEFENSE', 'PP', 'Regular_Prob', 'Regular_Pred', 'Offense_Prob',
                    'Offense_Pred', 'Defense_Prob', 'Defense_Pred']

df_final.to_csv('offense_defense_pressure_3', index=False)