offense_defense_pressure <- read.csv("~/ds_playground/offense_defense_pressure_3")


str(offense_defense_pressure)
offense_defense_pressure<- offense_defense_pressure[order(offense_defense_pressure$R),]
offense_defense_pressure$OFFENSE<- as.character(offense_defense_pressure$OFFENSE)
offense_defense_pressure$DEFENSE<- as.character(offense_defense_pressure$DEFENSE)

sum(offense_defense_pressure$PP)/length(offense_defense_pressure$R)
sum(offense_defense_pressure$Regular_Pred)/length(offense_defense_pressure$R)
sum(offense_defense_pressure$Offense_Pred)/length(offense_defense_pressure$R)
sum(offense_defense_pressure$Defense_Pred)/length(offense_defense_pressure$R)

offense_defense_pressure$Delta<-offense_defense_pressure$Regular_Pred - offense_defense_pressure$Defense_Pred 
sum(offense_defense_pressure$Delta)

str(offense_defense_pressure)


library(dplyr)

z1<- offense_defense_pressure %>%
  group_by(YEAR) %>%
  dplyr::summarize(Actual = sum(PP, na.rm=TRUE),N = length(R))


str(z1)

z1$Pr<- (z1$Actual/ z1$N)  
z1$Adjustor<- 1/((z1$Pr)/mean(z1$Pr))
str(z1)
z1 <- subset(z1, select = -c(Actual, N, Pr))

z2<- offense_defense_pressure %>%
  group_by(OFFENSE, YEAR) %>%
  dplyr::summarize(Actual = sum(PP, na.rm=TRUE), Expected = sum(Regular_Pred, na.rm=TRUE),
                   Off_Pressure = sum(Offense_Pred, na.rm = TRUE), N = length(R))


z3<- merge(z2, z1, by = 'YEAR')

z3$Delta<- z3$Expected - z3$Off_Pressure

z3$EActual<- z3$Actual * z3$Adjustor

z3$APressure<- z3$EActual + z3$Delta

z3$PR<- z3$EActual / z3$N

z3$RAP<- z3$APressure / z3$N




z3<- z3[order(-z3$RAP),]

zO2019<- z3[which(z3$YEAR==2019),]



z4<- offense_defense_pressure %>%
  group_by(DEFENSE, YEAR) %>%
  dplyr::summarize(Actual = sum(PP, na.rm=TRUE), Expected = sum(Regular_Pred, na.rm=TRUE),
                   Def_Pressure = sum(Defense_Pred, na.rm = TRUE), N = length(R))


z5<- merge(z4, z1, by = 'YEAR')

z5$Delta<- z5$Expected - z5$Def_Pressure

z5$EActual<- z5$Actual * z5$Adjustor

z5$APressure<- z5$EActual + z5$Delta

z5$PR<- z5$EActual / z5$N

z5$RAP<- z5$APressure / z5$N


z5<- z5[order(z5$RAP),]

zD2019<- z5[which(z5$YEAR==2019),]

zD2019<- zD2019[order(-zD2019$RAP),]
zO2019<- zO2019[order(zO2019$RAP),]




######## TESTING ###########

z8<- offense_defense_pressure[which((offense_defense_pressure$YEAR==2019 & offense_defense_pressure$OFFENSE=='NO')),] %>%
  group_by(OFFENSE, YEAR, WEEK) %>%
  dplyr::summarize(Actual = sum(PP, na.rm=TRUE), Expected = sum(Regular_Pred, na.rm=TRUE),
                   Off_Pressure = sum(Offense_Pred, na.rm = TRUE), N = length(R))




z9<- merge(z8, z1, by = 'YEAR')

z9$Delta<- z9$Expected - z9$Off_Pressure

z9$EActual<- z9$Actual * z9$Adjustor

z9$APressure<- z9$EActual + z9$Delta

z9$PR<- z9$EActual / z9$N

z9$RAP<- z9$APressure / z9$N


z10<- z9[which(z9$WEEK>2 & z9$WEEK< 8),]
z11<- z9[which(z9$WEEK<=2 | z9$WEEK>= 8),]


str(qb_stats)
qb_stats$QBRs<- as.character(qb_stats$QBRs)

z12<- qb_stats[which(qb_stats$QBRs=='J.Rosen'),]

z6<- z3 %>%
  group_by(YEAR) %>%
  dplyr::summarize(Delta = mean(Delta, na.rm=TRUE))

z7<- z5 %>%
  group_by(YEAR) %>%
  dplyr::summarize(Delta = mean(Delta, na.rm=TRUE))


# 0.5 = Offense close to 0, Defense Solidly above 0
# 0.75 = Offense close to 0, Defense WAY below 0
# 0.55 = Offense close to 0, Defense above  0
# 0.6 = Offense close to 0, Defense below  0
# 53, 57 = 0 0
z3<- z3[order(-z3$RAP),]
z5<- z3[order(-z5$RAP),]

zO2019<- z3[which(z3$YEAR==2019),]


str(pressure_project)

offense_stats$OFFENSE<- as.character(offense_stats$OFFENSE)

z6<- offense_stats[which(offense_stats$OFFENSE=='MIA' & offense_stats$YEAR==2019), ]


pressure_project$OFFENSE<- as.character(pressure_project$OFFENSE)

z7<- pressure_project[which(pressure_project$OFFENSE=='MIA' & pressure_project$YEAR==2019), ]


mean(z7$PP)
