data <- read.csv("~/Downloads/pressure/06_07.csv")

table(data$PLTYPE)

data$NULL.<- as.character(data$NULL.)
data$CHAL<- as.character(data$CHAL)
data$XTRA_NOTE<- as.character(data$XTRA_NOTE)
data$WEEK<- as.character(data$WEEK)
data$HOME<- as.character(data$HOME)
data$AWAY<- as.character(data$AWAY)
data$OFFENSE<- as.character(data$OFFENSE)
data$DEFENSE<- as.character(data$DEFENSE)
data$ZONE<- as.character(data$ZONE)
data$PLTYPE<- as.character(data$PLTYPE)
data$FORMATION<- as.character(data$FORMATION)
data$PA<- as.character(data$PA)
data$PLAY_DESIGN<- as.character(data$PLAY_DESIGN)
data$PYD<- as.character(data$PYD)
data$YAC<- as.character(data$YAC)
data$XTRA_COMMENT<- as.character(data$XTRA_COMMENT)
data$HIT<- as.character(data$HIT)
data$ZONE<- as.character(data$ZONE)
data$PLAYER<- as.character(data$PLAYER)
data$Pass_Pressure<- data$Pass_Pressure
data$AT<- as.character(data$AT)
data$REASON<- as.character(data$REASON)
data$Reason_Player<- as.character(data$Reason_Player)
data$BLOWN_BLOCK<- as.character(data$BLOWN_BLOCK)
data$BROKEN_TACKLES<- data$BROKEN_TACKLES
data$MISTAKE<- as.character(data$MISTAKE)
data$XTRA_COMMENT<- as.character(data$XTRA_COMMENT)
data$HIT<- as.character(data$HIT)

data1 <- read.csv("~/Downloads/pressure/08_09.csv", header = TRUE)
str(data1$Time)
data1$NULL.<- as.character(data1$NULL.)
data1$CHAL<- as.character(data1$CHAL)
data1$XTRA_NOTE<- as.character(data1$XTRA_NOTE)
data1$WEEK<- as.character(data1$WEEK)
data1$HOME<- as.character(data1$HOME)
data1$AWAY<- as.character(data1$AWAY)
data1$OFFENSE<- as.character(data1$OFFENSE)
data1$DEFENSE<- as.character(data1$DEFENSE)
data1$ZONE<- as.character(data1$ZONE)
data1$PLTYPE<- as.character(data1$PLTYPE)
data1$FORMATION<- as.character(data1$FORMATION)
data1$PA<- as.character(data1$PA)
data1$PLAY_DESIGN<- as.character(data1$PLAY_DESIGN)
data1$PYD<- as.character(data1$PYD)
data1$YAC<- as.character(data1$YAC)
data1$XTRA_COMMENT<- as.character(data1$XTRA_COMMENT)
data1$HIT<- as.character(data1$HIT)
data1$ZONE<- as.character(data1$ZONE)
data1$PLAYER<- as.character(data1$PLAYER)
data1$AT<- as.character(data1$AT)
data1$Pass_Pressure<- as.character(data1$Pass_Pressure)
data1$REASON<- as.character(data1$REASON)
data1$Reason_Player<- as.character(data1$Reason_Player)
data1$BLOWN_BLOCK<- as.character(data1$BLOWN_BLOCK)
data1$BROKEN_TACKLES<- as.character(data1$BROKEN_TACKLES)
data1$MISTAKE<- as.character(data1$MISTAKE)
data1$XTRA_COMMENT<- as.character(data1$XTRA_COMMENT)
data1$HIT<- as.character(data1$HIT)



data2 <- read.csv("~/Downloads/pressure/10_11_charting.csv")
sum(is.na(data2$Time))

data2$NULL.<- as.character(data2$NULL.)
data2$CHAL<- as.character(data2$CHAL)
data2$XTRA_NOTE<- as.character(data2$XTRA_NOTE)
data2$WEEK<- as.character(data2$WEEK)
data2$HOME<- as.character(data2$HOME)
data2$AWAY<- as.character(data2$AWAY)
data2$OFFENSE<- as.character(data2$OFFENSE)
data2$DEFENSE<- as.character(data2$DEFENSE)
data2$ZONE<- as.character(data2$ZONE)
data2$PLTYPE<- as.character(data2$PLTYPE)
data2$FORMATION<- as.character(data2$FORMATION)
data2$PA<- as.character(data2$PA)
data2$PLAY_DESIGN<- as.character(data2$PLAY_DESIGN)
data2$PYD<- as.character(data2$PYD)
data2$YAC<- as.character(data2$YAC)
data2$XTRA_COMMENT<- as.character(data2$XTRA_COMMENT)
data2$HIT<- as.character(data2$HIT)
data2$ZONE<- as.character(data2$ZONE)
data2$PLAYER<- as.character(data2$PLAYER)
data2$AT<- as.character(data2$AT)
data2$Pass_Pressure<- as.character(data2$Pass_Pressure)
data2$REASON<- as.character(data2$REASON)
data2$Reason_Player<- as.character(data2$Reason_Player)
data2$BLOWN_BLOCK<- as.character(data2$BLOWN_BLOCK)
data2$BROKEN_TACKLES<- as.character(data2$BROKEN_TACKLES)
data2$MISTAKE<- as.character(data2$MISTAKE)
data2$XTRA_COMMENT<- as.character(data2$XTRA_COMMENT)
data2$HIT<- as.character(data2$HIT)



data3 <- read.csv("~/Downloads/pressure/12_13.csv")

data3$NULL.<- as.character(data3$NULL.)
data3$CHAL<- as.character(data3$CHAL)
data3$XTRA_NOTE<- as.character(data3$XTRA_NOTE)
data3$WEEK<- as.character(data3$WEEK)
data3$HOME<- as.character(data3$HOME)
data3$AWAY<- as.character(data3$AWAY)
data3$OFFENSE<- as.character(data3$OFFENSE)
data3$DEFENSE<- as.character(data3$DEFENSE)
data3$ZONE<- as.character(data3$ZONE)
data3$PLTYPE<- as.character(data3$PLTYPE)
data3$FORMATION<- as.character(data3$FORMATION)
data3$PA<- as.character(data3$PA)
data3$PLAY_DESIGN<- as.character(data3$PLAY_DESIGN)
data3$PYD<- as.character(data3$PYD)
data3$YAC<- as.character(data3$YAC)
data3$XTRA_COMMENT<- as.character(data3$XTRA_COMMENT)
data3$HIT<- as.character(data3$HIT)
data3$ZONE<- as.character(data3$ZONE)
data3$PLAYER<- as.character(data3$PLAYER)
data3$AT<- as.character(data3$AT)
data3$Pass_Pressure<- as.character(data3$Pass_Pressure)
data3$REASON<- as.character(data3$REASON)
data3$Reason_Player<- as.character(data3$Reason_Player)
data3$BLOWN_BLOCK<- as.character(data3$BLOWN_BLOCK)
data3$BROKEN_TACKLES<- as.character(data3$BROKEN_TACKLES)
data3$MISTAKE<- as.character(data3$MISTAKE)
data3$XTRA_COMMENT<- as.character(data3$XTRA_COMMENT)
data3$HIT<- as.character(data3$HIT)


data4 <- read.csv("~/Downloads/pressure/14_15_charting.csv")

data4$NULL.<- as.character(data4$NULL.)
data4$CHAL<- as.character(data4$CHAL)
data4$XTRA_NOTE<- as.character(data4$XTRA_NOTE)
data4$WEEK<- as.character(data4$WEEK)
data4$HOME<- as.character(data4$HOME)
data4$AWAY<- as.character(data4$AWAY)
data4$OFFENSE<- as.character(data4$OFFENSE)
data4$DEFENSE<- as.character(data4$DEFENSE)
data4$ZONE<- as.character(data4$ZONE)
data4$PLTYPE<- as.character(data4$PLTYPE)
data4$FORMATION<- as.character(data4$FORMATION)
data4$PA<- as.character(data4$PA)
data4$PLAY_DESIGN<- as.character(data4$PLAY_DESIGN)
data4$PYD<- as.character(data4$PYD)
data4$YAC<- as.character(data4$YAC)
data4$XTRA_COMMENT<- as.character(data4$XTRA_COMMENT)
data4$HIT<- as.character(data4$HIT)
data4$ZONE<- as.character(data4$ZONE)
data4$PLAYER<- as.character(data4$PLAYER)
data4$AT<- as.character(data4$AT)
data4$Pass_Pressure<- as.character(data4$Pass_Pressure)
data4$REASON<- as.character(data4$REASON)
data4$Reason_Player<- as.character(data4$Reason_Player)
data4$BLOWN_BLOCK<- as.character(data4$BLOWN_BLOCK)
data4$BROKEN_TACKLES<- as.character(data4$BROKEN_TACKLES)
data4$MISTAKE<- as.character(data4$MISTAKE)
data4$XTRA_COMMENT<- as.character(data4$XTRA_COMMENT)
data4$HIT<- as.character(data4$HIT)

data5 <- read.csv("~/Downloads/pressure/16_17.csv")

data5$NULL.<- as.character(data5$NULL.)
data5$CHAL<- as.character(data5$CHAL)
data5$XTRA_NOTE<- as.character(data5$XTRA_NOTE)
data5$WEEK<- as.character(data5$WEEK)
data5$HOME<- as.character(data5$HOME)
data5$AWAY<- as.character(data5$AWAY)
data5$OFFENSE<- as.character(data5$OFFENSE)
data5$DEFENSE<- as.character(data5$DEFENSE)
data5$ZONE<- as.character(data5$ZONE)
data5$PLTYPE<- as.character(data5$PLTYPE)
data5$FORMATION<- as.character(data5$FORMATION)
data5$PA<- as.character(data5$PA)
data5$PLAY_DESIGN<- as.character(data5$PLAY_DESIGN)
data5$PYD<- as.character(data5$PYD)
data5$YAC<- as.character(data5$YAC)
data5$XTRA_COMMENT<- as.character(data5$XTRA_COMMENT)
data5$HIT<- as.character(data5$HIT)
data5$ZONE<- as.character(data5$ZONE)
data5$PLAYER<- as.character(data5$PLAYER)
data5$AT<- as.character(data5$AT)
data5$Pass_Pressure<- as.character(data5$Pass_Pressure)
data5$REASON<- as.character(data5$REASON)
data5$Reason_Player<- as.character(data5$Reason_Player)
data5$BLOWN_BLOCK<- as.character(data5$BLOWN_BLOCK)
data5$BROKEN_TACKLES<- as.character(data5$BROKEN_TACKLES)
data5$MISTAKE<- as.character(data5$MISTAKE)
data5$XTRA_COMMENT<- as.character(data5$XTRA_COMMENT)
data5$HIT<- as.character(data5$HIT)

data6 <- read.csv("~/Downloads/pressure/18_charting.csv")
str(data6)
data6$NULL.<- as.character(data6$NULL.)
data6$CHAL<- as.character(data6$CHAL)
data6$XTRA_NOTE<- as.character(data6$XTRA_NOTE)
data6$WEEK<- as.character(data6$WEEK)
data6$HOME<- as.character(data6$HOME)
data6$AWAY<- as.character(data6$AWAY)
data6$OFFENSE<- as.character(data6$OFFENSE)
data6$DEFENSE<- as.character(data6$DEFENSE)
data6$ZONE<- as.character(data6$ZONE)
data6$PLTYPE<- as.character(data6$PLTYPE)
data6$FORMATION<- as.character(data6$FORMATION)
data6$PA<- as.character(data6$PA)
data6$PLAY_DESIGN<- as.character(data6$PLAY_DESIGN)
data6$PYD<- as.character(data6$PYD)
data6$YAC<- as.character(data6$YAC)
data6$XTRA_COMMENT<- as.character(data6$XTRA_COMMENT)
data6$HIT<- as.character(data6$HIT)
data6$ZONE<- as.character(data6$ZONE)
data6$PLAYER<- as.character(data6$PLAYER)
data6$AT<- as.character(data6$AT)
data6$Pass_Pressure<- as.character(data6$Pass_Pressure)
data6$REASON<- as.character(data6$REASON)
data6$Reason_Player<- as.character(data6$Reason_Player)
data6$BLOWN_BLOCK<- as.character(data6$BLOWN_BLOCK)
data6$BROKEN_TACKLES<- as.character(data6$BROKEN_TACKLES)
data6$MISTAKE<- as.character(data6$MISTAKE)
data6$XTRA_COMMENT<- as.character(data6$XTRA_COMMENT)
data6$HIT<- as.character(data6$HIT)



data7 <- read.csv("~/Downloads/pressure/19_charting.csv")
str(data7)
data7$NULL.<- as.character(data7$NULL.)
data7$CHAL<- as.character(data7$CHAL)
data7$XTRA_NOTE<- as.character(data7$XTRA_NOTE)
data7$WEEK<- as.character(data7$WEEK)
data7$HOME<- as.character(data7$HOME)
data7$AWAY<- as.character(data7$AWAY)
data7$OFFENSE<- as.character(data7$OFFENSE)
data7$DEFENSE<- as.character(data7$DEFENSE)
data7$ZONE<- as.character(data7$ZONE)
data7$PLTYPE<- as.character(data7$PLTYPE)
data7$FORM_BACK<- as.character(data7$FORM_BACK)
data7$FORM_WIDE<- as.character(data7$FORM_WIDE)
data7$FO_BACK<- as.character(data7$FO_BACK)
data7$ESPN.FORM.SUGGEST<- as.character(data7$ESPN.FORM.SUGGEST)
data7$PA<- as.character(data7$PA)
data7$PLAY_DESIGN<- as.character(data7$PLAY_DESIGN)
data7$PYD<- as.character(data7$PYD)
data7$YAC<- as.character(data7$YAC)
data7$XTRA_COMMENT<- as.character(data7$XTRA_COMMENT)
data7$HIT<- as.character(data7$HIT)
data7$ZONE<- as.character(data7$ZONE)
data7$PLAYER<- as.character(data7$PLAYER)
data7$AT<- as.character(data7$AT)
data7$Pass_Pressure<- as.character(data7$Pass_Pressure)
data7$REASON<- as.character(data7$REASON)
data7$Reason_Player<- as.character(data7$Reason_Player)
data7$BLOWN_BLOCK<- as.character(data7$BLOWN_BLOCK)
data7$BROKEN_TACKLES<- as.character(data7$BROKEN_TACKLES)
data7$MISTAKE<- as.character(data7$MISTAKE)
data7$XTRA_COMMENT<- as.character(data7$XTRA_COMMENT)
data7$HIT<- as.character(data7$HIT)

data7$FORMATION<- as.character(data7$FORMATION)

data7$FORMATION<- paste(data7$ESPN.FORM.SUGGEST, data7$FORM_BACK, data7$FORM_WIDE, data7$FO_BACK, sep = " ")


data7 <- subset(data7, select = -c(ESPN.FORM.SUGGEST,FORM_BACK,FORM_WIDE,FO_BACK))
str(data7)
colnames(data)[50:75]
colnames(data7)[50:75]
table(data6$PLTYPE)
sum(is.na(data6$Time))
str(data6$Time)
Original<- data.frame(rbind(data, data1, data2, data3, data4, data5, data6, data7))
Charting<- Original
str(Charting)


Charting$R<- rep(1:length(Charting$YEAR))

table(Charting$PLTYPE)


table(Charting$PLTYPE=='pass', Charting$YEAR)
table(Charting$PLTYPE)
library(readr)
library(strsplit)
head(Charting$Pass_Pressure)

str(Charting)
str(Charting$Pass_Pressure)

Charting$NULL.<- as.character(Charting$NULL.)
Charting$CHAL<- as.character(Charting$CHAL)
Charting$XTRA_NOTE<- as.character(Charting$XTRA_NOTE)
Charting$WEEK<- as.character(Charting$WEEK)
Charting$HOME<- as.character(Charting$HOME)
Charting$AWAY<- as.character(Charting$AWAY)
Charting$OFFENSE<- as.character(Charting$OFFENSE)
Charting$DEFENSE<- as.character(Charting$DEFENSE)
Charting$ZONE<- as.character(Charting$ZONE)
Charting$PLTYPE<- as.character(Charting$PLTYPE)
Charting$FORMATION<- as.character(Charting$FORMATION)
Charting$PA<- as.character(Charting$PA)
Charting$PLAY_DESIGN<- as.character(Charting$PLAY_DESIGN)
Charting$PYD<- as.character(Charting$PYD)
Charting$YAC<- as.character(Charting$YAC)
Charting$XTRA_COMMENT<- as.character(Charting$XTRA_COMMENT)
Charting$HIT<- as.character(Charting$HIT)
Charting$ZONE<- as.character(Charting$ZONE)
Charting$PLAYER<- as.character(Charting$PLAYER)
Charting$AT<- as.character(Charting$AT)
Charting$Pass_Pressure<- as.character(Charting$Pass_Pressure)
Charting$REASON<- as.character(Charting$REASON)
Charting$Reason_Player<- as.character(Charting$Reason_Player)
Charting$BLOWN_BLOCK<- as.character(Charting$BLOWN_BLOCK)
Charting$BROKEN_TACKLES<- as.character(Charting$BROKEN_TACKLES)
Charting$MISTAKE<- as.character(Charting$MISTAKE)
Charting$XTRA_COMMENT<-as.character(Charting$XTRA_COMMENT)
Charting$HIT<- as.character(Charting$HIT)


str(Charting$Pass_Pressure)
Charting$PP<- ifelse(Charting$Pass_Pressure=="", 0, 1)
table(Charting$PP)

sum(Charting$PP)/length(Charting$R)

table(Charting$YEAR,is.na(Charting$X_AS_RB)==TRUE)
table(Charting$YEAR,is.na(Charting$Defender_2)==TRUE)
table(Charting$YEAR,is.na(Charting$HIT)==TRUE)




table(Charting$PLTYPE)

Charting$YDTM<- as.character(Charting$YDTM)
Charting$OFFENSE<- as.character(Charting$OFFENSE)


library(stringr)
library(foreach)
library(doParallel)

table(Charting$YEAR)
#R<- seq(1,length(Charting$YEAR))
#Charting<- data.frame(cbind(R,Charting))

table(Charting$YEAR)
table(Charting$YEAR,is.na(Charting$OL)==TRUE)

str(Charting)
Charting <- subset(Charting, select = -c(X1.TD))
Charting <- subset(Charting, select = -c(SC))
Charting <- subset(Charting, select = -c(AS,HS, OffYards, TO,KICKER, KICKYDS, KICK_YDL, 
                                         CATCH_YDL,RETURN_YDL))
colnames(Charting)

Charting <- subset(Charting, select = -c(AT,OL,X_As_WR, X_AS_RB, X_SLOT_FLEX, X_TIGHT))
colnames(Charting)
table(Charting$YEAR, is.na(Charting$SIDE))
table(Charting$YEAR)
Charting <- subset(Charting, select = -c(dl, lb, db))


table(Charting$YEAR, is.na(Charting$Zone_Blitz))
table(Charting$YEAR, is.na(Charting$BLOWN_BLOCK))






### EXTRA NOTE ####
Sys.setlocale('LC_ALL','C')
Charting$Pass_Pressure<- tolower(Charting$Pass_Pressure)
Charting$XTRA_COMMENT<- tolower(Charting$XTRA_COMMENT)
Charting$BLOWN_BLOCK<- tolower(Charting$BLOWN_BLOCK)
Charting$REASON<- tolower(Charting$REASON)
Charting$Reason_Player<- tolower(Charting$Reason_Player)
Charting$PLAY_DESIGN<- tolower(Charting$PLAY_DESIGN)
str(Charting)

#### BLITZ AND BLOWN BLOCKS

#Charting$Blitz<- ifelse(is.na(Charting$Zone_Blitz)==TRUE | Charting$Zone_Blitz!="", 1, 0)
#Charting$Blitz<- ifelse(grepl('blitz', Charting$Pass_Pressure, useBytes = TRUE )==TRUE, 1, Charting$Blitz)
#Charting$Blitz<- ifelse(grepl('blitz', Charting$XTRA_COMMENT, useBytes = TRUE )==TRUE, 1, Charting$Blitz)


#Charting$BB<- ifelse(is.na(Charting$BLOWN_BLOCK)==TRUE | Charting$BLOWN_BLOCK!="", 1, 0)
#Charting$BB<- ifelse(grepl('blown block', Charting$REASON, useBytes = TRUE )==TRUE, 1, Charting$Blown_Block)
#Charting$BB<- ifelse(grepl('blown block', Charting$Reason_Player, useBytes = TRUE )==TRUE, 1, Charting$Blown_Block)
#Charting$BB<- ifelse(grepl('blown block', Charting$XTRA_COMMENT, useBytes = TRUE )==TRUE, 1, Charting$Blown_Block)

#sum(Charting$BB)



Charting <- subset(Charting, select = -c(Zone_Blitz))
Charting <- subset(Charting, select = -c(SIDE, BLOWN_BLOCK, DROP_INT,MISTAKE,CHARTER, 
                                         First.Down, Accuracy))



colnames(Charting)


str(Charting$XTRA_NOTE)

Charting <- Charting[ which(Charting$XTRA_NOTE != '(Field Goal formation)') , ]
Charting <- Charting[ which(Charting$XTRA_NOTE != '(Kick formation)') , ]
Charting <- Charting[ which(Charting$XTRA_NOTE != '(Kick Formation)') , ]
Charting <- Charting[ which(Charting$XTRA_NOTE != '(7-M.Vick RB)' ), ]
Charting <- Charting[ which(Charting$XTRA_NOTE != '(Punt formation)') , ]
Charting <- Charting[ which(Charting$XTRA_NOTE != 'Fake FG') , ]
Charting <- Charting[ which(Charting$XTRA_NOTE != 'Fake punt') , ]
Charting <- Charting[ which(Charting$XTRA_NOTE != 'Fake Punt') , ]
Charting <- Charting[ which(Charting$XTRA_NOTE != 'Offense switch') , ]
Charting <- Charting[ which(Charting$XTRA_NOTE != 'Onside') , ]
Charting <- Charting[ which(Charting$XTRA_NOTE != 'SCORE') , ]
Charting <- Charting[ which(Charting$XTRA_NOTE != 'Toss') , ]
Charting <- Charting[ which(Charting$XTRA_NOTE != 'TMW') , ]
Charting <- Charting[ which(Charting$XTRA_NOTE != 'Timeout') , ]

table(Charting$PLTYPE=='pass', Charting$YEAR)
table(Charting$PLTYPE=='pass')
table(Original$PLTYPE=='pass')

table(Charting$PLTYPE)

sum(is.na(Charting$PLTYPE)==TRUE)
Charting <- Charting[ which(Charting$PLTYPE != 'Extra'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'Extra aborted'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'Extra blocked'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'FG aborted'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'FG blocked'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'FG good'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'FG no'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'Kickoff'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'Kickoff squib'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'punt'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'punt blocked'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'punt aborted'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'kickoff'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'kickoff squib'), ]




sum(is.na(Charting$Time)==TRUE)

Charting$Times<- ifelse(is.na(as.numeric(as.character(Charting$Time)))==TRUE, ((as.numeric(str_split_fixed(as.character(Charting$Time), ":",2)[,1]) + (as.numeric(str_split_fixed(as.character(Charting$Time), ":",2)[,2])/60)) /24), as.numeric(as.character(Charting$Time)))
sum(is.na(Charting$Times)==TRUE)

Charting <- Charting[ which(is.na(Charting$Times)==FALSE), ]


# Charting <- subset(Charting, select = -c(Time))


# Charting<- Charting[order(Charting$YEAR, Charting$WEEK, Charting$HOME, Charting$QTR, Charting$R, -Charting$Times),]
table(Charting$PLTYPE=='pass', Charting$YEAR)

Charting <- Charting[ which(Charting$PLTYPE != 'Intentional Safety'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'kneel'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'Onside'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'Onside squib'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'Onside failed'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'post-abort pass'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'post-play fumble'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'pre-play fumble'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'rushed/kneel'), ]
Charting <- Charting[ which(Charting$PLTYPE != 'spike'), ]

###################################################################################################################


table(Charting$HOME)




Charting <- Charting[ which(Charting$XTRA_COMMENT != 'Penalties after TD' | is.na(Charting$XTRA_COMMENT)==TRUE) , ]
Charting <- Charting[ which(Charting$XTRA_COMMENT != 'penalty after TD' | is.na(Charting$XTRA_COMMENT)==TRUE) , ]
Charting <- Charting[ which(Charting$XTRA_COMMENT != 'Penalty after TD'| is.na(Charting$XTRA_COMMENT)==TRUE) , ]

table(Charting$PLTYPE=='pass', Charting$YEAR)
table(Charting$PLTYPE=='pass')
table(Original$PLTYPE=='pass')

Charting <- Charting[ which(Charting$XTRA_COMMENT != 'Penalty after TD enforced on kickoff'| is.na(Charting$XTRA_COMMENT)==TRUE) , ]

Charting <- Charting[ which(Charting$XTRA_COMMENT != 'Penalty during 2pt enforced on kickoff'| is.na(Charting$XTRA_COMMENT)==TRUE) , ]
Charting <- Charting[ which(Charting$XTRA_COMMENT != 'penalty during TD enforced on kickoff'| is.na(Charting$XTRA_COMMENT)==TRUE ) , ]
Charting <- Charting[ which(Charting$XTRA_COMMENT != 'Penalty during XP' | is.na(Charting$XTRA_COMMENT)==TRUE) , ]
Charting <- Charting[ which(Charting$XTRA_COMMENT != 'Penalty during XP enforced on kickoff'| is.na(Charting$XTRA_COMMENT)==TRUE ) , ]
Charting <- Charting[ which(Charting$XTRA_COMMENT != 'Penalty enforced on kickoff'| is.na(Charting$XTRA_COMMENT)==TRUE ) , ]
Charting <- Charting[ which(Charting$XTRA_COMMENT != 'Penalty on TD enforced on kickoff'| is.na(Charting$XTRA_COMMENT)==TRUE) , ]
Charting <- Charting[ which(Charting$XTRA_COMMENT != 'Penalty on XP enforced on kickoff'| is.na(Charting$XTRA_COMMENT)==TRUE) , ]
Charting <- Charting[ which(Charting$XTRA_COMMENT != 'Penalty during TD enforced on kickoff'| is.na(Charting$XTRA_COMMENT)==TRUE) , ]
Charting <- Charting[ which(Charting$XTRA_COMMENT != 'penalty enforced on kickoff'| is.na(Charting$XTRA_COMMENT)==TRUE) , ]

table(Charting$PLTYPE=='pass')
table(Original$PLTYPE=='pass')




Charting <- Charting[ which(Charting$XTRA_COMMENT != 'Penalties during XP'| is.na(Charting$XTRA_COMMENT)==TRUE) , ]
Charting <- Charting[ which(Charting$XTRA_COMMENT != 'penalty'| is.na(Charting$XTRA_COMMENT)==TRUE) , ]

table(Charting$PLTYPE=='pass', Charting$YEAR)
table(Charting$PLTYPE=='pass')
table(Original$PLTYPE=='pass')

Charting <- Charting[ which(Charting$XTRA_COMMENT != 'Penalty after FG enforced on kickoff'| is.na(Charting$XTRA_COMMENT)==TRUE) , ]

Charting <- Charting[ which(Charting$XTRA_COMMENT != 'penalty after TD enforced on kickoff'| is.na(Charting$XTRA_COMMENT)==TRUE) , ]

Charting <- Charting[ which(Charting$XTRA_COMMENT != 'Penalty after TD enforced on XP?'| is.na(Charting$XTRA_COMMENT)==TRUE) , ]

Charting <- Charting[ which(Charting$XTRA_COMMENT != 'Penalty during 2pt'| is.na(Charting$XTRA_COMMENT)==TRUE) , ]

Charting <- Charting[ which(Charting$XTRA_COMMENT != 'Penalty during FG' | is.na(Charting$XTRA_COMMENT)==TRUE) , ]

Charting <- Charting[ which(Charting$XTRA_COMMENT != 'Penalty in end zone'| is.na(Charting$XTRA_COMMENT)==TRUE) , ]

Charting <- Charting[ which(Charting$XTRA_COMMENT != 'shortened play'| is.na(Charting$XTRA_COMMENT)==TRUE ) , ]

Charting <- Charting[ which(Charting$XTRA_COMMENT != 'shortened play penalty'| is.na(Charting$XTRA_COMMENT)==TRUE) , ]


table(Charting$PLTYPE=='pass')
table(Original$PLTYPE=='pass')

Charting$REASON<- sapply(Charting$REASON, tolower)
Charting$Reason_Player<- sapply(Charting$Reason_Player, tolower)

x<- str_split_fixed(Charting$PLAYER, "-", 2)
Charting$QBRs<- x[,2]

f<- Charting[which(Charting$QBRs=='D.Kizer'),]



colnames(Charting)

str(Charting$Pass_Pressure)
Charting$Pass_Pressure<- sapply(Charting$Pass_Pressure, tolower)

str(Charting$PP)


table(Charting$PP)
table(Charting$ESPN_PRESSURE)
table(Charting$SIS_PRESSURE)
str(Charting$FO_Pressure)

table(Charting$PP)

head(Charting$PP)
table(Charting$PP, Charting$YEAR)



Charting$Coverage<- ifelse(((grepl('coverage', Charting$REASON)==TRUE) | (grepl('coverage', Charting$Reason_Player)==TRUE) | 
                              (grepl('qb fault', Charting$Pass_Pressure)==TRUE) |(grepl('qb fault', Charting$REASON)==TRUE) | (grepl('qb fault', Charting$Reason_Player)==TRUE) | (grepl('qb fault', Charting$Pass_Pressure)==TRUE)), 1, 0)

Charting$Coverage<- ifelse(Charting$YEAR > 2015 & ((grepl('coverage', Charting$PLAY_DESIGN)==TRUE) | (grepl('qb fault', Charting$PLAY_DESIGN)==TRUE)), 1, Charting$Coverage)

table(Charting$YEAR, Charting$Coverage)
f<- Charting[which(Charting$Coverage==1),]


head(Charting$REASON)

table(Charting$CHAL)

str(Charting$CHAL)

table(Charting$PLTYPE=='pass', Charting$YEAR)

x <- Charting[ which(Charting$CHAL == 'Fix') , ]
# Charting <- Charting[ which(Charting$CHAL != 'Fix') , ]
table(Charting$PLTYPE=='pass')
table(Original$PLTYPE=='pass')



cl<-makeCluster(6)
registerDoParallel(cl)


Charting<- Charting[order(Charting$YEAR, Charting$WEEK, Charting$HOME, Charting$QTR, -Charting$Times),]


Charting$ACYDL<- ifelse(Charting$PLTYPE=='2pt pass' |Charting$PLTYPE == '2pt rush', 2,Charting$ACYDL)
Charting$YDTM<- ifelse(Charting$PLTYPE=='2pt pass' |Charting$PLTYPE == '2pt rush', Charting$HOME,Charting$YDTM)
table(Charting$PLTYPE)

Charting$PLTYPE<- as.character(Charting$PLTYPE)
table(Charting$PLTYPE)
Charting$PLTYPE<- ifelse(Charting$PLTYPE=='2pt rush' & is.na(Charting$RUSH)==FALSE, '2pt pass', Charting$PLTYPE)



Charting$PLTYPE<- ifelse(Charting$PLTYPE=='2pt rush', 'rushed', ifelse(Charting$PLTYPE=='2pt pass', 'pass',
                                                                       ifelse(Charting$PLTYPE=='penalties offsetting' | Charting$PLTYPE=='penalty declined' | Charting$PLTYPE=='penalty superseded', 
                                                                              'penalty', Charting$PLTYPE)))

table(Charting$PLTYPE=='pass', Charting$YEAR)
table(Charting$PLTYPE=='pass')
table(Original$PLTYPE=='pass')




table(Charting$PP)
Charting$RECEPT<- as.character(Charting$RECEPT)
table(Charting$RECEPT)
str(Charting$RECEPT)

Charting$RECEPT<- as.character(Charting$RECEPT)

table(Charting$PLTYPE)
Charting$PP<- ifelse((grepl('intentional grounding', Charting$RECEPT)==TRUE) | (grepl('sacked', Charting$RECEPT)) , 1, Charting$PP)

table(Charting$PLTYPE=='pass', Charting$YEAR)

sum(Charting$PP)

head(Charting$PP)

table(Charting$PLTYPE)

length(Charting$PLTYPE[Charting$PLTYPE=='rushed'])/(length(Charting$PLTYPE[Charting$PLTYPE=='rushed']) + length(Charting$PLTYPE[Charting$PLTYPE=='pass'])) 


table(Charting$DIRECTION)

table(as.character(Charting$DIRECTION))

Charting$DIRECTION<- as.character(Charting$DIRECTION)

str(Charting$DIRECTION)

Charting <- Charting[ which(Charting$DIRECTION != 'aborted snap' ),]
Charting <- Charting[ which(Charting$DIRECTION !=  'FG penalty' ),]
Charting <- Charting[ which(Charting$DIRECTION != 'FG Penalty'),]
Charting <- Charting[ which(Charting$DIRECTION != 'Kickoff Penalty' ),]
Charting <- Charting[ which(Charting$DIRECTION != 'Standard (Kneel'),]
Charting <- Charting[ which(Charting$DIRECTION != 'Standard/TO Return Penalty'),]
Charting <- Charting[ which(Charting$DIRECTION != 'TO Return Penalty'),]
Charting <- Charting[ which(Charting$DIRECTION != 'Punt Penalty'),]
Charting <- Charting[ which(Charting$DIRECTION != 'Conversion Penalty'),]


table(Charting$PLTYPE=='pass', Charting$YEAR)
table(Charting$PLTYPE=='pass')
table(Original$PLTYPE=='pass')

Charting <- Charting[ which(Charting$RECEPT != 'aborted snap'),]


table(Charting$PLTYPE=='pass', Charting$YEAR)
table(Charting$PLTYPE=='pass')
table(Original$PLTYPE=='pass')
str(Charting)



# Charting<- Charting[order(Charting$YEAR, Charting$WEEK, Charting$HOME, Charting$QTR, -Charting$Times),]

str(Charting$NULL.)


Charting <- Charting[ which(Charting$'NULL' != 'Penalties after TD' ),]
Charting <- Charting[ which(Charting$'NULL' != 'Penalties during XP'),]
Charting <- Charting[ which(Charting$'NULL' != 'penalty after TD' ),]
Charting <- Charting[ which(Charting$'NULL' != 'Penalty after TD'),]
Charting <- Charting[ which(Charting$'NULL' != 'penalty after TD enforced on kickoff'),]
Charting <- Charting[ which(Charting$'NULL' != 'Penalty after TD enforced on kickoff'),]
Charting <- Charting[ which(Charting$'NULL' != 'Penalty during 2pt enforced on kickoff'),]
Charting <- Charting[ which(Charting$'NULL' != 'penalty during TD enforced on kickoff'),]

x<- str_split_fixed(Charting$PLAYER, "-", 2)
Charting$QBRs<- x[,2]

f<- Charting[which(Charting$QBRs=='D.Kizer'),]



table(Charting$PLTYPE=='pass', Charting$YEAR)
table(Charting$PLTYPE=='pass')
table(Original$PLTYPE=='pass')
Charting <- Charting[ which(Charting$'NULL' != 'Penalty during TD enforced on kickoff'),]
Charting <- Charting[ which(Charting$'NULL' != 'Penalty during XP'),]
Charting <- Charting[ which(Charting$'NULL' != 'Penalty during XP enforced on kickoff'),]
Charting <- Charting[ which(Charting$'NULL' != 'penalty enforced on kickoff'),] 
Charting <- Charting[ which(Charting$'NULL' != 'Penalty enforced on kickoff'),]
Charting <- Charting[ which(Charting$'NULL' != 'Penalty on TD enforced on kickoff'),]
Charting <- Charting[ which(Charting$'NULL' != 'Penalty on XP enforced on kickoff'),]
Charting <- Charting[ which(Charting$'NULL' != 'Penalty during 2pt enforced on kickoff'),]
Charting <- Charting[ which(Charting$'NULL' != 'penalty during TD enforced on kickoff'),]
Charting <- Charting[ which(Charting$'NULL' != 'Penalty during 2pt'),]
Charting <- Charting[ which(Charting$'NULL' != 'Penalty during 2pt'),]


x<- str_split_fixed(Charting$PLAYER, "-", 2)
Charting$QBRs<- x[,2]

f<- Charting[which(Charting$QBRs=='D.Kizer'),]



table(Charting$PLTYPE=='pass', Charting$YEAR)
table(Charting$PLTYPE=='pass')
table(Original$PLTYPE=='pass')

l <- Charting[ which(Charting$YDTM != Charting$OFFENSE) , ]
l <- l[ which(l$YDTM != l$DEFENSE) , ]
f<- l[which(l$PLTYPE != 'penalty') , ]

sum(f$PP)
Charting<- Charting[!Charting$R %in% l$R, , drop = FALSE]




x<- str_split_fixed(Charting$PLAYER, "-", 2)
Charting$QBRs<- x[,2]

f<- Charting[which(Charting$QBRs=='D.Kizer'),]

table(f$PLTYPE)



############################################################



table(Charting$PLTYPE=='pass', Charting$YEAR)
table(Charting$PLTYPE=='pass')
table(Original$PLTYPE=='pass')





Charting$HOME<- as.character(Charting$HOME)
Charting$YDTM<- as.character(Charting$YDTM)


table(Charting$OFFENSE)



Charting$OFFENSE<- ifelse(Charting$OFFENSE=='LACH','LAC', Charting$OFFENSE)
Charting$OFFENSE<- ifelse(Charting$OFFENSE=='SD','LAC', Charting$OFFENSE)
Charting$OFFENSE<- ifelse(Charting$OFFENSE=='STL','LARM', Charting$OFFENSE)
Charting$OFFENSE<- ifelse(Charting$OFFENSE=='JAX','JAC', Charting$OFFENSE)
Charting$OFFENSE<- ifelse(Charting$OFFENSE=='LAR','LARM', Charting$OFFENSE)
Charting$DEFENSE<- ifelse(Charting$DEFENSE=='LACH','LAC', Charting$DEFENSE)
Charting$DEFENSE<- ifelse(Charting$DEFENSE=='SD','LAC', Charting$DEFENSE)
Charting$DEFENSE<- ifelse(Charting$DEFENSE=='STL','LARM', Charting$DEFENSE)
Charting$DEFENSE<- ifelse(Charting$DEFENSE=='JAX','JAC', Charting$DEFENSE)
Charting$DEFENSE<- ifelse(Charting$DEFENSE=='LAR','LARM', Charting$DEFENSE)
Charting$HOME<- ifelse(Charting$HOME=='LACH', 'LAC', Charting$HOME)
Charting$AWAY<- ifelse(Charting$AWAY=='LACH', 'LAC', Charting$AWAY)
Charting$AWAY<- ifelse(Charting$AWAY=='SD', 'LAC', Charting$AWAY)
Charting$AWAY<- ifelse(Charting$AWAY=='STL', 'LARM', Charting$AWAY)
Charting$AWAY<- ifelse(Charting$AWAY=='JAX', 'JAC', Charting$AWAY)
Charting$AWAY<- ifelse(Charting$AWAY=='LAR', 'LARM', Charting$AWAY)
Charting$YDTM<- ifelse(Charting$YDTM=='SD', 'LAC', Charting$YDTM)
Charting$YDTM<- ifelse(Charting$YDTM=='STL', 'LARM', Charting$YDTM)
Charting$YDTM<- ifelse(Charting$YDTM=='LACH', 'LAC', Charting$YDTM)
Charting$YDTM<- ifelse(Charting$YDTM=='JAX', 'JAC', Charting$YDTM)
Charting$YDTM<- ifelse(Charting$YDTM=='LAR', 'LARM', Charting$YDTM)
Charting$HOME<- ifelse( Charting$HOME=='SD', 'LAC', Charting$HOME)
Charting$HOME<- ifelse(Charting$HOME=='STL', 'LARM', Charting$HOME)
Charting$HOME<- ifelse(Charting$HOME=='LACH', 'LAC', Charting$HOME)
Charting$HOME<- ifelse(Charting$HOME=='JAX', 'JAC', Charting$HOME)
Charting$HOME<- ifelse(Charting$HOME=='LAR', 'LARM', Charting$HOME)

length(table(Charting$HOME))
length(table(Charting$OFFENSE))
length(table(Charting$DEFENSE))
length(table(Charting$YDTM))
length(table(Charting$AWAY))
table(Charting$OFFENSE)

str(Charting$Times)

table(Charting$PLTYPE=='pass', Charting$YEAR)

for(i in 2:length(Charting$R)) {
  if(Charting$OFFENSE[i] == Charting$OFFENSE[i-1] & is.na(Charting$ACYDL[i])==TRUE & Charting$PLTYPE[i]=='penalty') {
    Charting$ACYDL[i]<- Charting$ACYDL[i-1]
  }else{
    NA
  }
}


table(Charting$PLTYPE=='pass', Charting$YEAR)
table(Charting$PLTYPE=='pass')
table(Original$PLTYPE=='pass')

for(i in 2:(length(Charting$R)-1)) {
  if(Charting$OFFENSE[i] == Charting$OFFENSE[i-1] & Charting$OFFENSE[i] == Charting$OFFENSE[i+1] & is.na(Charting$YDTM[i])==TRUE & Charting$PLTYPE[i]=='penalty') {
    Charting$YDTM[i]<- Charting$YDTM[i+1]
  }else{
    NA
  }
}


for(i in 2:length(Charting$R)) {
  if(Charting$OFFENSE[i] == Charting$OFFENSE[i-1] & is.na(Charting$YDTM[i])==TRUE & Charting$PLTYPE[i]=='penalty') {
    Charting$YDTM[i]<- Charting$YDTM[i-1]
  }else{
    NA
  }
}





l<- Charting[ which(is.na(Charting$YDTM)==TRUE),]

str(Charting$PLTYPE)

Charting$Play<-"fresh"
for(i in 2:length(Charting$R)) {
  if(Charting$OFFENSE[i] == Charting$OFFENSE[i-1]) {
    Charting$Play[i]<- Charting$PLTYPE[i-1]
  }else{
    'fresh'
  }
}



for(i in 2:length(Charting$R)) {
  if(Charting$DOWN[i] == 0 & Charting$TOGO== 0 & Charting$ACYDL== 2) {
    Charting$YDTM[i]<- Charting$DEFENSE[i]
  }else{
    Charting$YDTM[i]<- Charting$YDTM[i]
  }
}



sum(is.na(Charting$Play))
table(Charting$Play)
#Charting$Play<- ifelse(Charting$Play==0, 'fresh', Charting$Play)

sum(is.na(Charting$ACYDL))
sum(is.na(Charting$YDTM))


sum(is.na(Charting$YDTM))


write.csv(Charting, "APS.csv")


length(Charting$PLTYPE[Charting$PLTYPE=='rushed'])/(length(Charting$PLTYPE[Charting$PLTYPE=='rushed']) + length(Charting$PLTYPE[Charting$PLTYPE=='pass'])) 




f<- Charting[ which(Charting$DOWN==0 & Charting$PLTYPE != 'penalty' & Charting$ACYDL==2), ]

Charting$DOWN<- ifelse(Charting$DOWN==0 & Charting$PLTYPE != 'penalty' & Charting$ACYDL==2, 4, Charting$DOWN)
Charting$TOGO<- ifelse(Charting$TOGO==0 & Charting$PLTYPE != 'penalty' & Charting$ACYDL==2, 2, Charting$TOGO)
# Charting<- Charting[!(Charting$R %in% f$R),]

Charting$DOWN<- ifelse(Charting$DOWN==0 & Charting$PLTYPE != 'penalty', 1, Charting$DOWN)
Charting$TOGO<- ifelse(Charting$TOGO==0 & Charting$PLTYPE != 'penalty', 10, Charting$TOGO)


table(Charting$DOWN)



Charting$Yardage<-0
for(i in 2:length(Charting$R)) {
  if(Charting$OFFENSE[i] == Charting$YDTM[i]) {
    Charting$Yardage[i]<- 100 - Charting$ACYDL[i]
  }else{
    Charting$Yardage[i]<- Charting$ACYDL[i]
  }
}


Charting$Yardage<- ifelse(Charting$OFFENSE == Charting$YDTM,100-Charting$ACYDL ,Charting$ACYDL )


Charting$Yard_Diff<-0
for(i in 2:length(Charting$R)) {
  if(Charting$OFFENSE[i] == Charting$OFFENSE[i-1]) {
    Charting$Yard_Diff[i]<- Charting$Yardage[i-1] - Charting$Yardage[i]
  }else{
    0
  }
}



Charting$Penalty<- ifelse((Charting$Play =='penalty') & (Charting$Yard_Diff > 0), 
                          'penalty-defense', ifelse((Charting$Play == 'penalty') & (Charting$Yard_Diff<0), 
                                                    'penalty-offense','None'))


Charting<- Charting[order(Charting$YEAR, Charting$WEEK, Charting$DEFENSE, Charting$QTR, -Charting$Time, Charting$R),]

str(Charting$PLTYPE)
table(Charting$PLTYPE=='pass', Charting$YEAR)
table(Charting$PLTYPE=='pass')
table(Original$PLTYPE=='pass')

table(Charting$PLTYPE=='pass')
table(Original$PLTYPE=='pass')



#Charting$Yardage<- ifelse(Charting$OFFENSE == Charting$YDTM,100-Charting$ACYDL ,Charting$ACYDL )



length(Charting$PLTYPE[Charting$PLTYPE=='rushed'])/(length(Charting$PLTYPE[Charting$PLTYPE=='rushed']) + length(Charting$PLTYPE[Charting$PLTYPE=='pass'])) 





table(Charting$PLTYPE)
Charting$PlaysDefense<-0
for(i in 2:length(Charting$R)) {
  if(Charting$DEFENSE[i] == Charting$DEFENSE[i-1] & Charting$WEEK[i] == Charting$WEEK[i-1]) {
    Charting$PlaysDefense[i]<- Charting$PlaysDefense[i-1] +1
  }else{
    0
  }
}


Charting<- Charting[ which(Charting$PLTYPE!='penalty'), ] 

Charting<- Charting[order(Charting$R),]


Charting$Timing<- ifelse(Charting$QTR==1, Charting$Times*24 + 60, ifelse(Charting$QTR==2, Charting$Times*24 + 45, ifelse(Charting$QTR==3, Charting$Times*24 + 30, ifelse(Charting$QTR==4, Charting$Times*24 + 15, Charting$Times*24))))
Charting<- Charting[order(Charting$YEAR, Charting$WEEK,Charting$HOME, -Charting$Timing),]
str(Charting$Timing)
str(Charting$DEFENSE)
str(Charting$WEEK)
Charting$TimeDifference<-0
for(i in 2:length(Charting$R)) {
  if(Charting$DEFENSE[i] == Charting$DEFENSE[i-1] & Charting$WEEK[i] == Charting$WEEK[i-1]) {
    Charting$TimeDifference[i]<- Charting$Timing[i-1] - Charting$Timing[i]
  }else{
    0
  }
}

Charting<- Charting[order(Charting$YEAR, Charting$WEEK, Charting$DEFENSE, Charting$QTR, -Charting$Timing, Charting$R),]


v<- Charting[which(Charting$TimeDifference< 0),]
v<- Charting[which(Charting$HOME=='OAK'),]
v<- v[which(v$YEAR==2009),]
v<- v[which(v$WEEK == 14),]


Charting$TimeDefense<-0
for(i in 2:length(Charting$R)) {
  if(Charting$DEFENSE[i] == Charting$DEFENSE[i-1]) {
    Charting$TimeDefense[i]<- Charting$TimeDefense[i-1] + Charting$TimeDifference[i]
  }else{
    0
  }
}





table(Charting$PLTYPE=='pass', Charting$YEAR)
table(Charting$PLTYPE=='pass')
table(Original$PLTYPE=='pass')
write.csv(Charting, "APS.csv")

# APS<- APS[,-1]
# W<- APS
table(Charting$PLTYPE)

str(Charting$TimeDifference)
m<-mean(Charting$TimeDifference, na.rm=TRUE)
std<-sqrt(var(Charting$TimeDifference, na.rm=TRUE))
hist(Charting$TimeDifference, density=20, prob=TRUE, 
     main="Histogram with normal curve")
curve(dnorm(x, mean=m, sd=std), add=TRUE)
max<- max(Charting$TimeDifference)
min<- min(Charting$TimeDifference)


v<- Charting[which(Charting$OFFENSE=='DEN'),]
v<- v[which(v$YEAR==2012),]
v<- v[which(v$WEEK == 8),]





Charting<- Charting[order(Charting$R),]

###### W Section ########
W<- Charting
table(W$RECEPT)

colnames(W)
table(W$PLTYPE)

x<- str_split_fixed(Charting$PLAYER, "-", 2)
Charting$QBRs<- x[,2]

f<- Charting[which(Charting$QBRs=='D.Kizer'),]
table(W$PLTYPE)

table(W$PP, W$YEAR)

table(W$YEAR)

W$PA<- as.character(W$PA)
# f<- W[ which(W$YEAR==2011 & W$OFFENSE=='DEN' & W$WEEK==10), ]





table(W$QB_Move)

## | grepl('intentional grounding', W$RECEPT)==TRUE | grepl('sacked', W$RECEPT)==TRUE  | grepl('scramble',W$RECEPT)==TRUE | grepl('option', W$QB_Move)==TRUE,1,0)

Sys.setlocale('LC_ALL','C')
W$PLAY_DESIGN<- tolower(W$PLAY_DESIGN)
W$XTRA_NOTE<- tolower(W$XTRA_NOTE)
Charting$XTRA_COMMENT<- tolower(Charting$XTRA_COMMENT)



table(W$PP, Charting$YEAR)

table(W$XTRA_NOTE)
W$Shotgun<- ifelse( grepl('shotgun', W$XTRA_NOTE),1,0)
W$Shotgun<- ifelse( grepl('shotgun', W$PLAY_DESIGN), 1, W$Shotgun)
W$Shotgun<- ifelse( grepl('shotgun sweep', W$PLAY_DESIGN),1, W$Shotgun)
W$Shotgun<- ifelse( grepl('shotgun', W$FORMATION), 1, W$Shotgun)
W$Shotgun<- ifelse( grepl('shotgun ', W$FORMATION), 1, W$Shotgun)
W$Shotgun<- ifelse( grepl('pistol', W$XTRA_NOTE),1, W$Shotgun)
W$Shotgun<- ifelse( grepl('pistol', W$PLAY_DESIGN), 1, W$Shotgun)
W$Shotgun<- ifelse( grepl('pistol ', W$FORMATION), 1, W$Shotgun)


str(W$FORMATION)

W$NoHuddle<- ifelse(grepl('no huddle', W$XTRA_NOTE), 1, 0)
W$NoHuddle<- ifelse(grepl('no huddle', W$FORMATION), 1, W$NoHuddle)
W$NoHuddle<- ifelse(grepl('no huddle ', W$FORMATION), 1, W$NoHuddle)







library(dplyr)

#z1<- W %>%
#  group_by(OFFENSE, YEAR, WEEK) %>%
#  dplyr::summarize(Time = mean(TimeDifference, na.rm=TRUE))

#z1<- z1[order(z1$Time),]

#table(z1$OFFENSE, z1$YEAR, z1$Time)

v<- W[which(W$TimeDifference< 0),]
v<- v[which(v$YEAR==2013),]
v<- v[which(v$WEEK == 7),]


v<- W[which(W$OFFENSE=='NE'),]
v<- v[which(v$YEAR==2013),]
v<- v[which(v$WEEK == 7),]


sum(v$NoHuddle)

table(W$NoHuddle, W$YEAR)
table(W$PLAY_DESIGN)

v<- W[which(W$OFFENSE=='IND'),]
v<- v[which(v$YEAR==2006),]




table(W$XTRA_NOTE)

W$Fleaflicker<- ifelse(grepl('flea flicker', W$XTRA_NOTE),1,0)
W$Fleaflicker<- ifelse(grepl('flea flicker', W$FORMATION),1, W$Fleaflicker)
W$Fleaflicker<- ifelse(grepl('flea flicker', W$PLAY_DESIGN),1,W$Fleaflicker)
W$Fleaflicker<- ifelse(grepl('broken play (flea flicker)', W$PLAY_DESIGN),1,W$Fleaflicker)
W$Fleaflicker<- ifelse(grepl('deep cross (flea flicker)', W$PLAY_DESIGN),1,W$Fleaflicker)
W$Fleaflicker<- ifelse(grepl('flea flicker - broken play', W$PLAY_DESIGN),1,W$Fleaflicker)
W$Fleaflicker<- ifelse(grepl('flea flicker - check & release', W$PLAY_DESIGN),1,W$Fleaflicker)
W$Fleaflicker<- ifelse(grepl('flea flicker - corner', W$PLAY_DESIGN),1,W$Fleaflicker)
W$Fleaflicker<- ifelse(grepl('flea flicker - corner post', W$PLAY_DESIGN),1,W$Fleaflicker)
W$Fleaflicker<- ifelse(grepl('flea flicker - dig', W$PLAY_DESIGN),1,W$Fleaflicker)
W$Fleaflicker<- ifelse(grepl('flea flicker - drag', W$PLAY_DESIGN),1,W$Fleaflicker)
W$Fleaflicker<- ifelse(grepl('flea flicker - go/fly', W$PLAY_DESIGN),1,W$Fleaflicker)
W$Fleaflicker<- ifelse(grepl('flea flicker - hitch & go', W$PLAY_DESIGN),1,W$Fleaflicker)
W$Fleaflicker<- ifelse(grepl('flea flicker - out', W$PLAY_DESIGN),1,W$Fleaflicker)
W$Fleaflicker<- ifelse(grepl('flea flicker - thrown away', W$PLAY_DESIGN),1,W$Fleaflicker)
W$Fleaflicker<- ifelse(grepl('go/fly (flea flicker)', W$PLAY_DESIGN),1,W$Fleaflicker)
W$Fleaflicker<- ifelse(grepl('hitch & go (flea flicker)', W$PLAY_DESIGN),1,W$Fleaflicker)
W$Fleaflicker<- ifelse(grepl('sluggo (flea flicker)', W$PLAY_DESIGN),1,W$Fleaflicker)
W$Fleaflicker<- ifelse(grepl('seam (flea flicker)', W$PLAY_DESIGN),1,W$Fleaflicker)

sum(W$Fleaflicker)

table(W$PLAY_DESIGN)



W$Screen<- ifelse(grepl('broken play (rb screen)', W$PLAY_DESIGN),1,0)
W$Screen<- ifelse(grepl('rb screen', W$PLAY_DESIGN),1,W$Screen)
W$Screen<- ifelse(grepl('rb screen ', W$PLAY_DESIGN),1,W$Screen)
W$Screen<- ifelse(grepl('screen', W$PLAY_DESIGN),1,W$Screen)
W$Screen<- ifelse(grepl('screen ', W$PLAY_DESIGN),1,W$Screen)
W$Screen<- ifelse(grepl('screen option', W$PLAY_DESIGN),1,W$Screen)
W$Screen<- ifelse(grepl('screen?', W$PLAY_DESIGN),1,W$Screen)
W$Screen<- ifelse(grepl('te screen', W$PLAY_DESIGN),1,W$Screen)
W$Screen<- ifelse(grepl('throwback screen', W$PLAY_DESIGN),1,W$Screen)
W$Screen<- ifelse(grepl('wr screen', W$PLAY_DESIGN),1,W$Screen)
W$Screen<- ifelse(grepl('double reverse ', W$PLAY_DESIGN),1,W$Screen)
W$Screen<- ifelse(grepl('end around', W$PLAY_DESIGN),1,W$Screen)
W$Screen<- ifelse(grepl('end around-option', W$PLAY_DESIGN),1,W$Screen)
W$Screen<- ifelse(grepl('double reverse ', W$PLAY_DESIGN),1,W$Screen)
W$Screen<- ifelse(grepl('screen', W$FORMATION),1,W$Screen)
W$Screen<- ifelse(grepl('screen?', W$PLAY_DESIGN), 1, W$Screen)
W$Screen<- ifelse(grepl('shovel (jet sweep/screen)', W$PLAY_DESIGN),1,W$Screen)
W$Screen<- ifelse(grepl(' shovel (jet sweep/screen)', W$PLAY_DESIGN),1,W$Screen)
W$Screen<- ifelse(grepl('shovel screen', W$PLAY_DESIGN),1,W$Screen)
W$Screen<- ifelse(grepl('wr screen', W$PLAY_DESIGN),1,W$Screen)

W$Short<- ifelse(grepl('shovel (jet sweep/screen)', W$PLAY_DESIGN),1, 0)
W$Short<- ifelse(grepl(' shovel (jet sweep/screen)', W$PLAY_DESIGN),1,W$Short)
W$Short<- ifelse(grepl('shovel screen', W$PLAY_DESIGN),1,W$Short)
W$Short<- ifelse(grepl('shovel pass (dumpoff)', W$PLAY_DESIGN),1,W$Short)

W$Short<- ifelse(grepl('quick slant', W$FORMATION),1,W$Short)
W$Short<- ifelse(grepl('quick out', W$FORMATION),1,W$Short)
W$Short<- ifelse(grepl('quick hitch', W$FORMATION),1,W$Short)
W$Short<- ifelse(grepl('quick', W$FORMATION),1,W$Short)
W$Short<- ifelse(grepl('slant', W$FORMATION),1,W$Short)


W$Short<- ifelse(grepl('pitch', W$PLAY_DESIGN), 1, W$Short)
W$Short<- ifelse(grepl('dumpoff', W$PLAY_DESIGN), 1, W$Short)
W$Short<- ifelse(grepl('quick', W$PLAY_DESIGN), 1, W$Short)
W$Short<- ifelse(grepl('shovel', W$PLAY_DESIGN), 1, W$Short)
W$Short<- ifelse(grepl('smoke', W$PLAY_DESIGN), 1, W$Short)
W$Short<- ifelse(grepl('swing', W$PLAY_DESIGN), 1, W$Short)
W$Short<- ifelse(grepl('swing', W$PLAY_DESIGN), 1, W$Short)
W$Short<- ifelse(grepl('swing pass', W$PLAY_DESIGN), 1, W$Short)

table(W$Screen)

W$Option<- ifelse(grepl('end around-option', W$PLAY_DESIGN),1,0)
W$Option<- ifelse(grepl('hb option pass', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('option', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('option keep', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('option pitch', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('screen option', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('pitch, rb option', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('qb option', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('rb option', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('rb option pass', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('screen option', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('read option', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('reverse/wr option pass', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('sprint out pass', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('triple option', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('triple option give', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('triple option keep', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('triple option pitch', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('wr option', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('wr option pass', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('zone read', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('zone read (espn)', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('zone read handoff', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('zone read keeper', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('zone read/jet sweep', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('zone read/triple option', W$PLAY_DESIGN),1,W$Option)
W$Option<- ifelse(grepl('zone-counter', W$PLAY_DESIGN),1,W$Option)

table(W$Option)

W$Odd<- ifelse(grepl('broken play (flea flicker)', W$PLAY_DESIGN),1, 0)
W$Odd<- ifelse(grepl('broken play (rb screen)', W$PLAY_DESIGN),1, W$Odd)
W$Odd<- ifelse(grepl('wr pass', W$PLAY_DESIGN),1, W$Odd)
W$Odd<- ifelse(grepl('m.vick', W$XTRA_NOTE),1,W$Odd)
W$Odd<- ifelse(grepl('p.white', W$XTRA_NOTE),1,W$Odd)
W$Odd<- ifelse(grepl('t.tebow', W$XTRA_NOTE),1,W$Odd)
W$Odd<- ifelse(grepl('direct snap', W$PLAY_DESIGN),1,W$Odd)

sum(W$PP)

v<- W[which(grepl('intentional grounding', W$XTRA_COMMENT, useBytes = TRUE ) |
              grepl('pressure', W$XTRA_COMMENT, useBytes = TRUE )),]


v<- v[which(v$PP==0),]

W$PP<- ifelse((grepl('intentional grounding', W$XTRA_COMMENT, useBytes = TRUE ) |
                grepl('pressure', W$XTRA_COMMENT, useBytes = TRUE )) & W$PP==0, 1, 
              W$PP)



sum(W$PP)
#W$PP<- ifelse(grepl('hurry', W$XTRA_COMMENT, useBytes = TRUE ),1, 
             # W$PP)



sum(W$PP)
#W$PP<- ifelse(grepl('hurried', W$XTRA_COMMENT, useBytes = TRUE ),1, 
             # W$PP)




sum(W$PP)
#W$PP<- ifelse(grepl('hurrying', W$XTRA_COMMENT, useBytes = TRUE ),1, 
              #W$PP)




sum(W$PP)

v<- v[which(v$PP==0),]

v<- v[which(grepl('no pressure', v$XTRA_COMMENT, useBytes = TRUE )==FALSE),]
v<- v[which(grepl('not pressure', v$XTRA_COMMENT, useBytes = TRUE )==FALSE),]
v<- v[which(grepl('not much pressure', v$XTRA_COMMENT, useBytes = TRUE )==FALSE),]
v<- v[which(grepl('real pressure', v$XTRA_COMMENT, useBytes = TRUE )==FALSE),]
v<- v[which(grepl('wasn\'t pressure', v$XTRA_COMMENT, useBytes = TRUE )==FALSE),]
v<- v[which(grepl('without pressure', v$XTRA_COMMENT, useBytes = TRUE )==FALSE),]
v<- v[which(grepl('unpressured', v$XTRA_COMMENT, useBytes = TRUE )==FALSE),]



W$Maybe<- ifelse(grepl('no pressure', W$XTRA_COMMENT, useBytes = TRUE ) |
                   grepl('not pressure', W$XTRA_COMMENT, useBytes = TRUE ),1, 
                 0)


W$Maybe<- ifelse(grepl('not much pressure', W$XTRA_COMMENT, useBytes = TRUE ) |
                   grepl('real pressure', W$XTRA_COMMENT, useBytes = TRUE ),1, 
                 W$Maybe)

W$Maybe<- ifelse(grepl('wasn\'t pressure', W$XTRA_COMMENT, useBytes = TRUE ) |
                   grepl('without pressure', W$XTRA_COMMENT, useBytes = TRUE ),1, 
                 W$Maybe)

W$Maybe<- ifelse(grepl('wasn\'t pressure', W$XTRA_COMMENT, useBytes = TRUE ) |
                   grepl('without pressure', W$XTRA_COMMENT, useBytes = TRUE ),1, 
                 W$Maybe)

sum(W$Maybe)
W$Maybe<- ifelse(grepl('unpressured', W$XTRA_COMMENT, useBytes = TRUE ),1, 
                 W$Maybe)


W$Maybe<- ifelse(grepl('lots of time', W$XTRA_COMMENT, useBytes = TRUE ),1, 
                 W$Maybe)

sum(W$Maybe)

W$Maybe<- ifelse(grepl('coverage pressure', W$XTRA_COMMENT, useBytes = TRUE ) |
                   grepl('all day to throw', W$XTRA_COMMENT, useBytes = TRUE ),1, 
                 W$Maybe)

sum(W$Maybe)


W$NoHuddle<- ifelse(grepl('no huddle', W$XTRA_COMMENT), 1, W$NoHuddle)
W$NoHuddle<- ifelse(grepl('hurry up', W$XTRA_COMMENT), 1, W$NoHuddle)
W$NoHuddle<- ifelse(grepl('hurry-up', W$XTRA_COMMENT), 1, W$NoHuddle)
W$NoHuddle<- ifelse(grepl('hury up', W$XTRA_COMMENT), 1, W$NoHuddle)
W$NoHuddle<- ifelse(grepl('hurryup', W$XTRA_COMMENT), 1, W$NoHuddle)
W$NoHuddle<- ifelse(grepl('no hudle', W$XTRA_COMMENT), 1, W$NoHuddle)

sum(W$PP)
W$PP<- ifelse(W$Maybe==1, 0, W$PP)
sum(W$PP)



table(W$Shotgun, W$YEAR, W$OFFENSE)
table(W$RECEPT)
str(W$HIT)
table(W$HIT)
sum(is.na(W$HIT)==TRUE)
W$Hit<- ifelse(tolower(W$HIT)=="", 0, 1)
W$Hit<- ifelse(grepl('sacked', W$RECEPT), 1,  W$Hit)
W$Hit<- ifelse(grepl('hit as he threw', W$XTRA_COMMENT), 1,  W$Hit)
W$Hit<- ifelse(grepl('hit while throw', W$XTRA_COMMENT), 1,  W$Hit)


sum(W$Hit)


table(W$HIT)

mean(W$Hit)



table(W$PLAY_DESIGN)

table(W$Odd)
table(W$Shotgun)
table(W$Hit)







table(W$PLAY_DESIGN)

table(W$Screen)

str(W$PA)
W$PlayAction = ifelse(W$PA=="", 0, 1)
head(W$PlayAction)
table(W$PlayAction)

length(W$PLTYPE[W$PLTYPE=='rushed'])/(length(W$PLTYPE[W$PLTYPE=='rushed']) + length(W$PLTYPE[W$PLTYPE=='rushed']))
table(W$PlayAction)

table(W$PLAY_DESIGN)
table(W$PLTYPE)


table(W$RECEPT)


W$PP<- ifelse((grepl('intentional grounding', W$RECEPT)==TRUE) | (grepl('sacked', W$RECEPT)==TRUE) , 1, W$PP)


W$QB_Move<- tolower(W$QB_Move)
W$Boot<- ifelse(grepl("bootleg", W$QB_Move) | grepl("rollout", W$QB_Move),1,0)

sum(W$PP)


table(W$NoHuddle, W$YEAR, W$OFFENSE)
W$KEEP<- ifelse(grepl('pass', W$PLTYPE)==TRUE, 1, 0) 
W$KEEP<-ifelse(grepl('intentional grounding', W$PLTYPE)==TRUE, 1, W$KEEP)
W$KEEP<-ifelse(grepl('intentional grounding', W$XTRA_COMMENT)==TRUE, 1, W$KEEP)
W$KEEP<-ifelse(grepl('sacked', W$PLTYPE)==TRUE, 1, W$KEEP)
W$KEEP<-ifelse(grepl('sacked', W$RECEPT)==TRUE, 1, W$KEEP)
W$KEEP<- ifelse(grepl('sacked', W$PLAY_DESIGN)==TRUE, 1, W$KEEP)
W$KEEP<- ifelse(grepl('sacked', W$XTRA_COMMENT)==TRUE, 1, W$KEEP)
W$KEEP<-ifelse(grepl('scramble', W$PLTYPE)==TRUE, 1, W$KEEP)
W$KEEP<-ifelse(grepl('scramble', W$RECEPT)==TRUE, 1, W$KEEP)
W$KEEP<- ifelse(grepl('scramble', W$PLAY_DESIGN)==TRUE, 1, W$KEEP)
W$KEEP<- ifelse(grepl('scramble', W$XTRA_COMMENT)==TRUE, 1, W$KEEP)
sum(W$KEEP)
W$KEEP<- ifelse(is.na(W$BLOCK)==TRUE | is.na(W$RUSH)==TRUE, 0, W$KEEP)
sum(W$KEEP)
v<- W[ which(is.na(W$BLOCK)==TRUE & W$PLTYPE!='rushed'), ]
table(W$RECEPT)

#W$KEEP<- ifelse(is.na(W$BLOCK)==FALSE,1,W$KEEP) 
W$KEEP<- ifelse(W$PLTYPE=='rushed' & W$INTENDED=="",0,W$KEEP)


W$Scramble<- ifelse(grepl('scramble', W$PLTYPE)==TRUE, 1, 0)
W$Scramble<- ifelse(grepl('scramble', W$RECEPT)==TRUE, 1, W$Scramble)
W$Scramble<- ifelse(grepl('scramble', W$PLAY_DESIGN)==TRUE, 1, W$Scramble)
W$Scramble<- ifelse(grepl('scramble', W$XTRA_COMMENT)==TRUE, 1, W$Scramble)

table(W$Scramble)
table(W$YEAR, W$Scramble)

sum(W$Scramble)
v<- W[ which(W$KEEP==0), ]
table(v$PLTYPE)
v<- v[ which(v$NoHuddle==1), ]

grepl('pass', v$PLTYPE[1:5])

sum(W$Scramble)
v<- W[ which(W$Scramble==1), ]
v<- v[ which(is.na(v$BLOCK)==TRUE), ]
sum(v$KEEP)
W<- W[ which(W$KEEP==1), ]

W<- W[which(W$PA!='RB fake then EA'),]
W<- W[which(W$PA!='RB/FB fakes then EA'),]
W<- W[which(W$PA!='Fake RB/Real FB'),]
W<- W[which(W$PA!='RB fake then FB give'),]
W<- W[which(W$PA!='FB give'),]
W<- W[which(W$PA!='FB/EA'),]

table(W$PA)


W<- W[which(W$PLAY_DESIGN!='inside handoff'),]
W<- W[which(W$PLAY_DESIGN!='qb draw'),]
W<- W[which(W$PLAY_DESIGN!='pull guard'),]
W<- W[which(W$PLAY_DESIGN!='draw'),]




sum(W$NoHuddle)


table(W$KEEP)

length(W$PLTYPE[W$PLTYPE=='rushed'])/(length(W$PLTYPE[W$PLTYPE=='rushed']) + length(W$PLTYPE[W$PLTYPE=='pass']))

table(W$QB_Move)


table(W$YEAR, is.na(W$QB_Move)==TRUE)



table(W$Boot)




table(W$QB_Move)


table(W$KEEP)






table(W$PLTYPE)


table(W$YEAR)

table(W$PLTYPE)
table(W$Option)
table(W$NoHuddle)




table(W$PA)


table(W$PLAY_DESIGN)



x<- str_split_fixed(W$PLAYER, "-", 2)
W$QBRs<- x[,2]



f<- W[which(W$QBRs=='M.Turner'),]





table(W$PLAY_DESIGN)






table(W$QBRs)

W$QBRs<- as.character(W$QBRs)
W$QBRs[W$QBRs=="Ma.Moore"]<-"M.Moore"
W$QBRs[W$QBRs=="Matt.Moore"]<-"M.Moore"
W$QBRs[W$QBRs=="Sh.Hill"]<-"S.Hill"
W$QBRs[W$QBRs=="Jo.Freeman"]<-"J.Freeman"

W$QBRs<- ifelse(grepl('B.Volek', W$QBR), 'backup', W$QBR)
W$QBRs<- ifelse(grepl('N.Sudfeld', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('B.Berlin', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('B.St Pierre', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('T.Bouman', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('M.Simms', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('G.McElroy', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('R.Smith', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('B.Brohm', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('D.Fales', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('P.Ramsey', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('S.Mannion', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('D.Dixon', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('J.Tuel', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('P.Ramsey', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('P.Ramsey', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('T.Pike', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('C.Nall', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('M.Tuiasosopo', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('M.Kafka', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('J.Palmer', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('J.Sorgi', W$QBR), 'backup', W$QBR)
W$QBRs<- ifelse(grepl('W.Grier', W$QBR), 'backup', W$QBR)
W$QBRs<- ifelse(W$QBRs=='K.Allen' & W$OFFENSE=='LAC', 'Ke.Allen', W$QBRs)
W$QBRs<- ifelse(W$QBRs=='K.Allen' & W$OFFENSE=='LAC', 'Ke.Allen', W$QBRs)
W$QBRs<- ifelse(grepl('J.Stidham', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('K.Lauletta', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('J.Callahan', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('K.O\'Connell', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('K.O\'Connell', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('J.Lorenzen', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('S.Renfree', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('A.Wright', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('R.Nassib', W$QBR), 'third string', W$QBR)
W$QBRs<- ifelse(grepl('A.Tanney', W$QBR), 'third string', W$QBR)


################################ QB PROCESSING PHASE """"

sort(table(W$QBR), decreasing = F)[260:262]
W$QBRs<- factor(W$QBRs) 
W$QBR<- W$QBRs
levels(W$QBR)[rank(table(W$QBR)) < 261] <- "get rid"

W$QBR<- as.character(W$QBR)
sort(table(W$QBR), decreasing = F)[1:10]



W$QBRs<- factor(W$QBR) 
W$QBR<- W$QBRs
levels(W$QBR)[rank(table(W$QBR)) < 10] <- "third string"


W$QBR<- as.character(W$QBR)
sort(table(W$QBR), decreasing = F)[1:17]

W$QBR<- factor(W$QBR) 
levels(W$QBR)[rank(table(W$QBR)) < 17] <- "backup"

W$QBR<- as.character(W$QBR)
sort(table(W$QBR), decreasing = F)





#sort(table(W$QBR), decreasing = F)


W<- W[order(W$YEAR, W$WEEK, W$HOME, W$QTR, -W$Times, W$OFFENSE),]

W$QBR<- as.character(W$QBR)

sort(table(W$QBR), decreasing = F)

length(unique(W$QBR))

table(W$RECEPT)
str(W$RECEPT)
W$RECEPT<- as.character(W$RECEPT)
W$PlayResult<- ifelse(grepl('out of bounds', W$RECEPT), 'incomplete', ifelse(grepl('lateral', W$RECEPT), 'complete', ifelse(grepl('intentional grounding', W$RECEPT), 'sacked', W$RECEPT)))
table(W$PlayResult)


str(W$YEAR)
table(W$OFFENSE)
W$OFFENSE<- as.character(W$OFFENSE)
W$DEFENSE<- as.character(W$DEFENSE)
W$OFFENSE<-ifelse(grepl('STL', W$OFFENSE), 'LARM', W$OFFENSE)
W$OFFENSE<-ifelse(grepl('SD', W$OFFENSE), 'LAC', W$OFFENSE)

table(W$OFFENSE)
W$DEFENSE<-ifelse(grepl('STL', W$DEFENSE), 'LARM', W$DEFENSE)
W$DEFENSE<-ifelse(grepl('SD', W$DEFENSE), 'LAC', W$DEFENSE)

W$WEEK<- as.numeric(as.character(W$WEEK))

table(W$PYD)

sum(is.na(W$Ht)==TRUE)
table(W$Hit)

str(W)
table(W$YEAR)



str(W)
str(z1)


head(zz$QBRs)
zz$Rolling_Pressure
str(zz)

W$WEEK<- as.numeric(as.character(W$WEEK))

table(W$DEFENSE)
str(W$OFFENSE)
W$O_KEY<- paste(W$OFFENSE, "O", W$YEAR, sep = "-")
W$D_KEY<- paste(W$DEFENSE, "D", W$YEAR, sep = "-")



sort(table(W$O_KEY=='DEN-O-2010-13'), decreasing = F)
table(W$O_KEY)

f<- W[which(W$OFFENSE=='DEN' & W$YEAR==2011 & W$WEEK==10), ]




############################

table(W$OFFENSE)
table(W$DEFENSE)
table(W$YDTM)



W<- W[order(W$YEAR, W$WEEK, W$OFFENSE, W$QTR, -W$Times, W$R),]


W$HOME<- as.character(W$HOME)
W$YDTM<- as.character(W$YDTM)

colnames(W)

sum(W$Shotgun)

table(W$DEFENSE)

table(W$HOME)

W<- W[order(W$YEAR, 
            W$OFFENSE, W$WEEK, W$QTR, 
            -W$Times),]

table(W$PP, W$YEAR)




write.csv(W, "~/W.csv")


f<- W[ which(W$YEAR==2011 & W$OFFENSE=='DEN' & W$WEEK==10), ]

sum(W$Shotgun)
table(W$Shotgun, W$YEAR)
colnames(W)

sum(W$PP)/length(W$PP)
sum(W$PlayAction)/length(W$R)
sum(W$Boot)/length(W$R)
sum(W$Coverage)/length(W$R)
sum(W$NoHuddle)/length(W$R)
sum(W$Hit)/length(W$R)

sum(W$Screen)
sum(W$Short)

table(W$NoHuddle, W$YEAR, W$OFFENSE)
# pressure_project_massaged <- read_csv("~/Downloads/Pressure_Charting/W.csv")



##### TEAM PROFILE #####

W$OFFENSE<- as.character(W$OFFENSE)
W$DEFENSE<- as.character(W$DEFENSE)

str(W)

W$PYD<- as.character(W$PYD)


library(dplyr)
library(gtools)
str(W$PYD)
table(W$PYD)
W$PYD<- ifelse(W$PYD=='NEED', NA, W$PYD)
mean(W$PYD, na.rm = TRUE)
head(W$PYD)
str(W$PYD)
sum(is.na(as.numeric(as.character(W$PYD)))==TRUE)


W$QBRs<- as.character(W$QBRs)

table(W$QBRs)
table(W$PYD)
str(W$PYD)
W$PYD<- as.numeric(W$PYD)


sum(W$Scramble)
W$PYD<- ifelse(is.na(W$PYD)==TRUE, mean(W$PYD, na.rm = TRUE), W$PYD) 

sum(is.na(W$PYD)==TRUE)

sum(W$Short)
sum(W$Screen)

str(W$PYD)
z1<- W %>%
  group_by(YEAR, WEEK, OFFENSE) %>%
  dplyr::summarize(Pressure = sum(PP, na.rm=TRUE), Hit = sum(Hit), PYD = sum(PYD), Short = sum(Short), Screen = sum(Screen), N=n())


z2<- W %>%
  group_by(YEAR, WEEK, DEFENSE) %>%
  dplyr::summarize(Pressure = sum(PP, na.rm=TRUE), Hit = sum(Hit), PYD = sum(PYD), Short = sum(Short), Screen = sum(Screen), N=n())

sum(is.na(z1$Hit)==TRUE)


z1$WEEK<- as.integer(z1$WEEK)
str(z1$WEEK)

str(z1$Pressure)
mean(z1$Pressure)

z1<- z1[order(z1$OFFENSE, 
              z1$YEAR, z1$WEEK),]

z1$Adjustor<- ifelse(z1$WEEK==17, 16, 1)


z1$Running_Total<-1
for(i in 2:length(z1$N)) {
  if(z1$OFFENSE[i] == z1$OFFENSE[i-1] & z1$YEAR[i-1] == z1$YEAR[i]) {
    z1$Running_Total[i]<- z1$Running_Total[i-1] + 1
  }else{
    z1$Running_Total[i]<- 1
  }
}

z1$Running_Total<- ifelse(z1$YEAR!=2006, z1$Running_Total+1, z1$Running_Total)



z2<- z2[order(z2$DEFENSE, 
              z2$YEAR, z2$WEEK),]

z2$Adjustor<- ifelse(z2$WEEK==17, 16, 1)


z2$Running_Total<-1
for(i in 2:length(z2$N)) {
  if(z2$DEFENSE[i] == z2$DEFENSE[i-1] & z2$YEAR[i-1] == z2$YEAR[i]) {
    z2$Running_Total[i]<- z2$Running_Total[i-1] + 1
  }else{
    z2$Running_Total[i]<- 1
  }
}

z2$Running_Total<- ifelse(z2$YEAR!=2006, z2$Running_Total+1, z2$Running_Total)


### Pressure OFFENSE ###




#df12 = pd.merge(df12, dfb[['D_Pressure_Rate', 'D_Running_Pressure_Rate', 'D_Hit_Rate', 'D_Running_Hit_Rate', 'D_Pass_Depth', 'D_Running_Pass_Depth',
# 'D_Short_Att', 'D_Running_Short_Att',
#'D_Screen_Att', 'D_Running_Screen_Att',
# 'Key']],

z1$Pressure_Rate<- z1$Pressure/z1$N
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='ARI' & z1$YEAR == 2006 & z1$WEEK == 1,  3/42 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='ATL' & z1$YEAR == 2006 & z1$WEEK == 1,  5/37 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='BAL' & z1$YEAR == 2006 & z1$WEEK == 1,  2/36 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='BUF' & z1$YEAR == 2006 & z1$WEEK == 1,  2/37 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='CAR' & z1$YEAR == 2006 & z1$WEEK == 1,  1/25 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='CHI' & z1$YEAR == 2006 & z1$WEEK == 1,  3/23 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='CIN' & z1$YEAR == 2006 & z1$WEEK == 1,  1/24 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='CLE' & z1$YEAR == 2006 & z1$WEEK == 1,  5/37 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='DAL' & z1$YEAR == 2006 & z1$WEEK == 1,  5/39 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='DEN' & z1$YEAR == 2006 & z1$WEEK == 1,  2/22 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='DET' & z1$YEAR == 2006 & z1$WEEK == 1,  1/33 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='GB' & z1$YEAR == 2006 & z1$WEEK == 1,  3/37 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='HOU' & z1$YEAR == 2006 & z1$WEEK == 1,  0/36 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='IND' & z1$YEAR == 2006 & z1$WEEK == 1,  1/30 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='JAC' & z1$YEAR == 2006 & z1$WEEK == 1,  3/30 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='KC' & z1$YEAR == 2006 & z1$WEEK == 1,  2/29 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='LAC' & z1$YEAR == 2006 & z1$WEEK == 1,  6/36 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='LARM' & z1$YEAR == 2006 & z1$WEEK == 1,  2/32 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='MIA' & z1$YEAR == 2006 & z1$WEEK == 1,  2/35 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='MIN' & z1$YEAR == 2006 & z1$WEEK == 1,  0/40 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='NE' & z1$YEAR == 2006 & z1$WEEK == 1,  1/55 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='NO' & z1$YEAR == 2006 & z1$WEEK == 1,  4/37 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='NYG' & z1$YEAR == 2006 & z1$WEEK == 1,  2/24 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='NYJ' & z1$YEAR == 2006 & z1$WEEK == 1,  4/20 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='OAK' & z1$YEAR == 2006 & z1$WEEK == 1,  3/48 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='PHI' & z1$YEAR == 2006 & z1$WEEK == 1,  4/42 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='PIT' & z1$YEAR == 2006 & z1$WEEK == 1,  1/16 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='SF' & z1$YEAR == 2006 & z1$WEEK == 1,  3/29 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='SEA' & z1$YEAR == 2006 & z1$WEEK == 1,  4/25 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='TB' & z1$YEAR == 2006 & z1$WEEK == 1,  1/25 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='TEN' & z1$YEAR == 2006 & z1$WEEK == 1,  1/39 * 3, z1$Pressure_Rate)
z1$Pressure_Rate<- ifelse(z1$OFFENSE=='WAS' & z1$YEAR == 2006 & z1$WEEK == 1,  1/25 * 3, z1$Pressure_Rate)




for(i in 2:length(z1$N)) {
  if(z1$OFFENSE[i] == z1$OFFENSE[i-1] ) {
    z1$Pressure_Rate[i]<- z1$Pressure[i-1]/z1$N[i-1]
  }else{
    z1$Pressure_Rate[i]<- z1$Pressure_Rate[i]
  }
}





z1$Running_Pressure_Rate<- z1$Pressure_Rate

z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='ARI' & z1$YEAR == 2006 & z1$WEEK == 1,  .0629 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='ATL' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0815 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='BAL' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0711 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='BUF' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0837 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='CAR' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0593 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='CHI' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0652 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='CIN' & z1$YEAR == 2006 & z1$WEEK == 1,  0.043 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='CLE' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0846 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='DAL' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0909 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='DEN' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0527 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='DET' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0544 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='GB' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0413 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='HOU' & z1$YEAR == 2006 & z1$WEEK == 1,  0.1315 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='IND' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0432 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='JAC' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0707 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='KC' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0594 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='LAC' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0540 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='LARM' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0713 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='MIA' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0447 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='MIN' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0959 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='NE' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0486 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='NO' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0690 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='NYG' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0510 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='NYJ' & z1$YEAR == 2006 & z1$WEEK == 1,  0.1031 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='OAK' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0677 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='PHI' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0649 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='PIT' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0741 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='SF' & z1$YEAR == 2006 & z1$WEEK == 1,  0.1098 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='SEA' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0509 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='TB' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0757 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='TEN' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0481 * 3, z1$Running_Pressure_Rate)
z1$Running_Pressure_Rate<- ifelse(z1$OFFENSE=='WAS' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0614 * 3, z1$Running_Pressure_Rate)


for(i in 2:length(z1$N)) {
  if(z1$OFFENSE[i] == z1$OFFENSE[i-1] ) {
    z1$Running_Pressure_Rate[i]<- z1$Running_Pressure_Rate[i-1]/z1$Adjustor[i-1] + z1$Pressure_Rate[i]
  }else{
    z1$Running_Pressure_Rate[i]<- z1$Running_Pressure_Rate[i]
  }
}




z1$Running_Pressure_Rate<- z1$Running_Pressure_Rate / z1$Running_Total



### Pressure DEFENSE ###
z2$Pressure_Rate<- z2$Pressure/z2$N
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='ARI' & z2$YEAR == 2006 & z2$WEEK == 1,  1/30 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='ATL' & z2$YEAR == 2006 & z2$WEEK == 1,  1/25 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='BAL' & z2$YEAR == 2006 & z2$WEEK == 1,  5/37 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='BUF' & z2$YEAR == 2006 & z2$WEEK == 1,  4/20 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='CAR' & z2$YEAR == 2006 & z2$WEEK == 1,  5/37 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='CHI' & z2$YEAR == 2006 & z2$WEEK == 1,  0/40 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='CIN' & z2$YEAR == 2006 & z2$WEEK == 1,  2/29 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='CLE' & z2$YEAR == 2006 & z2$WEEK == 1,  2/36 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='DAL' & z2$YEAR == 2006 & z2$WEEK == 1,  2/32 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='DEN' & z2$YEAR == 2006 & z2$WEEK == 1,  6/36 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='DET' & z2$YEAR == 2006 & z2$WEEK == 1,  1/16 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='GB' & z2$YEAR == 2006 & z2$WEEK == 1,  4/25 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='HOU' & z2$YEAR == 2006 & z2$WEEK == 1,  3/29 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='IND' & z2$YEAR == 2006 & z2$WEEK == 1,  3/42 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='JAC' & z2$YEAR == 2006 & z2$WEEK == 1,  1/39 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='KC' & z2$YEAR == 2006 & z2$WEEK == 1,  1/24 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='LAC' & z2$YEAR == 2006 & z2$WEEK == 1,  2/22 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='LARM' & z2$YEAR == 2006 & z2$WEEK == 1,  5/39 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='MIA' & z2$YEAR == 2006 & z2$WEEK == 1,  1/55 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='MIN' & z2$YEAR == 2006 & z2$WEEK == 1,  3/23 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='NE' & z2$YEAR == 2006 & z2$WEEK == 1,  2/239 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='NO' & z2$YEAR == 2006 & z2$WEEK == 1,  1/25 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='NYG' & z2$YEAR == 2006 & z2$WEEK == 1,  3/48 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='NYJ' & z2$YEAR == 2006 & z2$WEEK == 1,  2/37 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='OAK' & z2$YEAR == 2006 & z2$WEEK == 1,  2/24 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='PHI' & z2$YEAR == 2006 & z2$WEEK == 1,  1/25 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='PIT' & z2$YEAR == 2006 & z2$WEEK == 1,  1/33 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='SF' & z2$YEAR == 2006 & z2$WEEK == 1,  0/36 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='SEA' & z2$YEAR == 2006 & z2$WEEK == 1,  3/37 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='TB' & z2$YEAR == 2006 & z2$WEEK == 1,  4/37 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='TEN' & z2$YEAR == 2006 & z2$WEEK == 1, 3/30 * 3, z2$Pressure_Rate)
z2$Pressure_Rate<- ifelse(z2$DEFENSE=='WAS' & z2$YEAR == 2006 & z2$WEEK == 1,  4/42 * 3, z2$Pressure_Rate)


for(i in 2:length(z2$N)) {
  if(z2$DEFENSE[i] == z2$DEFENSE[i-1] ) {
    z2$Pressure_Rate[i]<- z2$Pressure[i-1]/z2$N[i-1]
  }else{
    z2$Pressure_Rate[i]<- z2$Pressure_Rate[i]
  }
}




z2$Running_Pressure_Rate<- z2$Pressure_Rate


z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='ARI' & z2$YEAR == 2006 & z2$WEEK == 1,  .07 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='ATL' & z2$YEAR == 2006 & z2$WEEK == 1,  0.066 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='BAL' & z2$YEAR == 2006 & z2$WEEK == 1,  0.074 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='BUF' & z2$YEAR == 2006 & z2$WEEK == 1,  0.07 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='CAR' & z2$YEAR == 2006 & z2$WEEK == 1,  0.079 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='CHI' & z2$YEAR == 2006 & z2$WEEK == 1,  0.069 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='CIN' & z2$YEAR == 2006 & z2$WEEK == 1,  0.051 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='CLE' & z2$YEAR == 2006 & z2$WEEK == 1,  0.047 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='DAL' & z2$YEAR == 2006 & z2$WEEK == 1,  0.07 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='DEN' & z2$YEAR == 2006 & z2$WEEK == 1,  0.044 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='DET' & z2$YEAR == 2006 & z2$WEEK == 1,  0.06 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='GB' & z2$YEAR == 2006 & z2$WEEK == 1,  0.075 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='HOU' & z2$YEAR == 2006 & z2$WEEK == 1,  0.073 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='IND' & z2$YEAR == 2006 & z2$WEEK == 1,  0.083 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='JAC' & z2$YEAR == 2006 & z2$WEEK == 1,  0.089 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='KC' & z2$YEAR == 2006 & z2$WEEK == 1,  0.049 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='LAC' & z2$YEAR == 2006 & z2$WEEK == 1,  0.075 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='LARM' & z2$YEAR == 2006 & z2$WEEK == 1,  0.075 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='MIA' & z2$YEAR == 2006 & z2$WEEK == 1,  0.082 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='MIN' & z2$YEAR == 2006 & z2$WEEK == 1,  0.06 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='NE' & z2$YEAR == 2006 & z2$WEEK == 1,  0.059 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='NO' & z2$YEAR == 2006 & z2$WEEK == 1,  0.056 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='NYG' & z2$YEAR == 2006 & z2$WEEK == 1,  0.066 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='NYJ' & z2$YEAR == 2006 & z2$WEEK == 1,  0.061 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='OAK' & z2$YEAR == 2006 & z2$WEEK == 1,  0.069 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='PHI' & z2$YEAR == 2006 & z2$WEEK == 1,  0.055 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='PIT' & z2$YEAR == 2006 & z2$WEEK == 1,  0.079 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='SF' & z2$YEAR == 2006 & z2$WEEK == 1,  0.046 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='SEA' & z2$YEAR == 2006 & z2$WEEK == 1,  0.081 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='TB' & z2$YEAR == 2006 & z2$WEEK == 1,  0.07 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='TEN' & z2$YEAR == 2006 & z2$WEEK == 1,  0.08 * 3, z2$Running_Pressure_Rate)
z2$Running_Pressure_Rate<- ifelse(z2$DEFENSE=='WAS' & z2$YEAR == 2006 & z2$WEEK == 1,  0.061 * 3, z2$Running_Pressure_Rate)

for(i in 2:length(z2$N)) {
  if(z2$DEFENSE[i] == z2$DEFENSE[i-1] ) {
    z2$Running_Pressure_Rate[i]<- z2$Running_Pressure_Rate[i-1]/z2$Adjustor[i-1] + z2$Pressure_Rate[i]
  }else{
    z2$Running_Pressure_Rate[i]<- z2$Running_Pressure_Rate[i]
  }
}


z2$Running_Pressure_Rate<- z2$Running_Pressure_Rate / z2$Running_Total

### Pressure DEFENSE ###


### Hit OFFENSE ###



z1$Hit_Rate<- z1$Hit/z1$N
z1$Hit_Rate<- ifelse(z1$OFFENSE=='ARI' & z1$YEAR == 2006 & z1$WEEK == 1,  3/42 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='ATL' & z1$YEAR == 2006 & z1$WEEK == 1,  5/37 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='BAL' & z1$YEAR == 2006 & z1$WEEK == 1,  2/36 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='BUF' & z1$YEAR == 2006 & z1$WEEK == 1,  2/37 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='CAR' & z1$YEAR == 2006 & z1$WEEK == 1,  1/25 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='CHI' & z1$YEAR == 2006 & z1$WEEK == 1,  3/23 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='CIN' & z1$YEAR == 2006 & z1$WEEK == 1,  1/24 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='CLE' & z1$YEAR == 2006 & z1$WEEK == 1,  5/37 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='DAL' & z1$YEAR == 2006 & z1$WEEK == 1,  5/39 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='DEN' & z1$YEAR == 2006 & z1$WEEK == 1,  2/22 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='DET' & z1$YEAR == 2006 & z1$WEEK == 1,  1/33 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='GB' & z1$YEAR == 2006 & z1$WEEK == 1,  3/37 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='HOU' & z1$YEAR == 2006 & z1$WEEK == 1,  0/36 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='IND' & z1$YEAR == 2006 & z1$WEEK == 1,  1/30 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='JAC' & z1$YEAR == 2006 & z1$WEEK == 1,  3/30 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='KC' & z1$YEAR == 2006 & z1$WEEK == 1,  2/29 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='LAC' & z1$YEAR == 2006 & z1$WEEK == 1,  6/36 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='LARM' & z1$YEAR == 2006 & z1$WEEK == 1,  2/32 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='MIA' & z1$YEAR == 2006 & z1$WEEK == 1,  2/35 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='MIN' & z1$YEAR == 2006 & z1$WEEK == 1,  0/40 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='NE' & z1$YEAR == 2006 & z1$WEEK == 1,  1/55 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='NO' & z1$YEAR == 2006 & z1$WEEK == 1,  4/37 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='NYG' & z1$YEAR == 2006 & z1$WEEK == 1,  2/24 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='NYJ' & z1$YEAR == 2006 & z1$WEEK == 1,  4/20 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='OAK' & z1$YEAR == 2006 & z1$WEEK == 1,  3/48 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='PHI' & z1$YEAR == 2006 & z1$WEEK == 1,  4/42 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='PIT' & z1$YEAR == 2006 & z1$WEEK == 1,  1/16 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='SF' & z1$YEAR == 2006 & z1$WEEK == 1,  3/29 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='SEA' & z1$YEAR == 2006 & z1$WEEK == 1,  4/25 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='TB' & z1$YEAR == 2006 & z1$WEEK == 1,  1/25 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='TEN' & z1$YEAR == 2006 & z1$WEEK == 1,  1/39 * 1.5, z1$Hit_Rate)
z1$Hit_Rate<- ifelse(z1$OFFENSE=='WAS' & z1$YEAR == 2006 & z1$WEEK == 1,  1/25 * 1.5, z1$Hit_Rate)



for(i in 2:length(z1$N)) {
  if(z1$OFFENSE[i] == z1$OFFENSE[i-1] ) {
    z1$Hit_Rate[i]<- z1$Hit[i-1]/z1$N[i-1]
  }else{
    z1$Hit_Rate[i]<- z1$Hit_Rate[i]
  }
}

z1$Running_Hit_Rate<- z1$Hit_Rate

z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='ARI' & z1$YEAR == 2006 & z1$WEEK == 1,  .0629 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='ATL' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0815 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='BAL' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0711 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='BUF' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0837 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='CAR' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0593 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='CHI' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0652 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='CIN' & z1$YEAR == 2006 & z1$WEEK == 1,  0.043 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='CLE' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0846 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='DAL' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0909 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='DEN' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0527 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='DET' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0544 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='GB' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0413 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='HOU' & z1$YEAR == 2006 & z1$WEEK == 1,  0.1315 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='IND' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0432 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='JAC' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0707 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='KC' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0594 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='LAC' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0540 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='LARM' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0713 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='MIA' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0447 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='MIN' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0959 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='NE' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0486 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='NO' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0690 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='NYG' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0510 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='NYJ' & z1$YEAR == 2006 & z1$WEEK == 1,  0.1031 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='OAK' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0677 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='PHI' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0649 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='PIT' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0741 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='SF' & z1$YEAR == 2006 & z1$WEEK == 1,  0.1098 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='SEA' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0509 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='TB' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0757 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='TEN' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0481 * 1.5, z1$Running_Hit_Rate)
z1$Running_Hit_Rate<- ifelse(z1$OFFENSE=='WAS' & z1$YEAR == 2006 & z1$WEEK == 1,  0.0614 * 1.5, z1$Running_Hit_Rate)


for(i in 2:length(z1$N)) {
  if(z1$OFFENSE[i] == z1$OFFENSE[i-1] ) {
    z1$Running_Hit_Rate[i]<- z1$Running_Hit_Rate[i-1]/z1$Adjustor[i-1] + z1$Hit_Rate[i]
  }else{
    z1$Running_Hit_Rate[i]<- z1$Running_Hit_Rate[i]
  }
}




z1$Running_Hit_Rate<- z1$Running_Hit_Rate / z1$Running_Total



### Hit DEFENSE ###
z2$Hit_Rate<- z2$Hit/z2$N
z2$Hit_Rate<- ifelse(z2$DEFENSE=='ARI' & z2$YEAR == 2006 & z2$WEEK == 1,  1/30 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='ATL' & z2$YEAR == 2006 & z2$WEEK == 1,  1/25 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='BAL' & z2$YEAR == 2006 & z2$WEEK == 1,  5/37 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='BUF' & z2$YEAR == 2006 & z2$WEEK == 1,  4/20 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='CAR' & z2$YEAR == 2006 & z2$WEEK == 1,  5/37 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='CHI' & z2$YEAR == 2006 & z2$WEEK == 1,  0/40 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='CIN' & z2$YEAR == 2006 & z2$WEEK == 1,  2/29 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='CLE' & z2$YEAR == 2006 & z2$WEEK == 1,  2/36 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='DAL' & z2$YEAR == 2006 & z2$WEEK == 1,  2/32 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='DEN' & z2$YEAR == 2006 & z2$WEEK == 1,  6/36 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='DET' & z2$YEAR == 2006 & z2$WEEK == 1,  1/16 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='GB' & z2$YEAR == 2006 & z2$WEEK == 1,  4/25 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='HOU' & z2$YEAR == 2006 & z2$WEEK == 1,  3/29 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='IND' & z2$YEAR == 2006 & z2$WEEK == 1,  3/42 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='JAC' & z2$YEAR == 2006 & z2$WEEK == 1,  1/39 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='KC' & z2$YEAR == 2006 & z2$WEEK == 1,  1/24 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='LAC' & z2$YEAR == 2006 & z2$WEEK == 1,  2/22 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='LARM' & z2$YEAR == 2006 & z2$WEEK == 1,  5/39 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='MIA' & z2$YEAR == 2006 & z2$WEEK == 1,  1/55 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='MIN' & z2$YEAR == 2006 & z2$WEEK == 1,  3/23 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='NE' & z2$YEAR == 2006 & z2$WEEK == 1,  2/239 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='NO' & z2$YEAR == 2006 & z2$WEEK == 1,  1/25 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='NYG' & z2$YEAR == 2006 & z2$WEEK == 1,  3/48 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='NYJ' & z2$YEAR == 2006 & z2$WEEK == 1,  2/37 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='OAK' & z2$YEAR == 2006 & z2$WEEK == 1,  2/24 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='PHI' & z2$YEAR == 2006 & z2$WEEK == 1,  1/25 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='PIT' & z2$YEAR == 2006 & z2$WEEK == 1,  1/33 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='SF' & z2$YEAR == 2006 & z2$WEEK == 1,  0/36 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='SEA' & z2$YEAR == 2006 & z2$WEEK == 1,  3/37 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='TB' & z2$YEAR == 2006 & z2$WEEK == 1,  4/37 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='TEN' & z2$YEAR == 2006 & z2$WEEK == 1, 3/30 * 1.5, z2$Hit_Rate)
z2$Hit_Rate<- ifelse(z2$DEFENSE=='WAS' & z2$YEAR == 2006 & z2$WEEK == 1,  4/42 * 1.5, z2$Hit_Rate)



for(i in 2:length(z2$N)) {
  if(z2$DEFENSE[i] == z2$DEFENSE[i-1] ) {
    z2$Hit_Rate[i]<- z2$Hit[i-1]/z2$N[i-1]
  }else{
    z2$Hit_Rate[i]<- z2$Hit_Rate[i]
  }
}




z2$Running_Hit_Rate<- z2$Hit_Rate


z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='ARI' & z2$YEAR == 2006 & z2$WEEK == 1,  .07 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='ATL' & z2$YEAR == 2006 & z2$WEEK == 1,  0.066 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='BAL' & z2$YEAR == 2006 & z2$WEEK == 1,  0.074 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='BUF' & z2$YEAR == 2006 & z2$WEEK == 1,  0.07 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='CAR' & z2$YEAR == 2006 & z2$WEEK == 1,  0.079 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='CHI' & z2$YEAR == 2006 & z2$WEEK == 1,  0.069 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='CIN' & z2$YEAR == 2006 & z2$WEEK == 1,  0.051 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='CLE' & z2$YEAR == 2006 & z2$WEEK == 1,  0.047 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='DAL' & z2$YEAR == 2006 & z2$WEEK == 1,  0.07 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='DEN' & z2$YEAR == 2006 & z2$WEEK == 1,  0.044 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='DET' & z2$YEAR == 2006 & z2$WEEK == 1,  0.06 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='GB' & z2$YEAR == 2006 & z2$WEEK == 1,  0.075 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='HOU' & z2$YEAR == 2006 & z2$WEEK == 1,  0.073 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='IND' & z2$YEAR == 2006 & z2$WEEK == 1,  0.083 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='JAC' & z2$YEAR == 2006 & z2$WEEK == 1,  0.089 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='KC' & z2$YEAR == 2006 & z2$WEEK == 1,  0.049 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='LAC' & z2$YEAR == 2006 & z2$WEEK == 1,  0.075 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='LARM' & z2$YEAR == 2006 & z2$WEEK == 1,  0.075 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='MIA' & z2$YEAR == 2006 & z2$WEEK == 1,  0.082 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='MIN' & z2$YEAR == 2006 & z2$WEEK == 1,  0.06 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='NE' & z2$YEAR == 2006 & z2$WEEK == 1,  0.059 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='NO' & z2$YEAR == 2006 & z2$WEEK == 1,  0.056 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='NYG' & z2$YEAR == 2006 & z2$WEEK == 1,  0.066 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='NYJ' & z2$YEAR == 2006 & z2$WEEK == 1,  0.061 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='OAK' & z2$YEAR == 2006 & z2$WEEK == 1,  0.069 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='PHI' & z2$YEAR == 2006 & z2$WEEK == 1,  0.055 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='PIT' & z2$YEAR == 2006 & z2$WEEK == 1,  0.079 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='SF' & z2$YEAR == 2006 & z2$WEEK == 1,  0.046 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='SEA' & z2$YEAR == 2006 & z2$WEEK == 1,  0.081 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='TB' & z2$YEAR == 2006 & z2$WEEK == 1,  0.07 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='TEN' & z2$YEAR == 2006 & z2$WEEK == 1,  0.08 * 1.5, z2$Running_Hit_Rate)
z2$Running_Hit_Rate<- ifelse(z2$DEFENSE=='WAS' & z2$YEAR == 2006 & z2$WEEK == 1,  0.061 * 1.5, z2$Running_Hit_Rate)

for(i in 2:length(z2$N)) {
  if(z2$DEFENSE[i] == z2$DEFENSE[i-1] ) {
    z2$Running_Hit_Rate[i]<- z2$Running_Hit_Rate[i-1]/z2$Adjustor[i-1] + z2$Hit_Rate[i]
  }else{
    z2$Running_Hit_Rate[i]<- z2$Running_Hit_Rate[i]
  }
}


z2$Running_Hit_Rate<- z2$Running_Hit_Rate / z2$Running_Total




### PYD ###


z1$Pass_Depth<- z1$PYD/z1$N

for(i in 2:length(z1$N)) {
  if(z1$OFFENSE[i] == z1$OFFENSE[i-1] ) {
    z1$Pass_Depth[i]<- z1$PYD[i-1]/z1$N[i-1]
  }else{
    z1$Pass_Depth[i]<- z1$Pass_Depth[i]
  }
}

z1$Running_Pass_Depth<- z1$Pass_Depth

for(i in 2:length(z1$N)) {
  if(z1$OFFENSE[i] == z1$OFFENSE[i-1] ) {
    z1$Running_Pass_Depth[i]<- z1$Running_Pass_Depth[i-1]/z1$Adjustor[i-1] + z1$Pass_Depth[i]
  }else{
    z1$Running_Pass_Depth[i]<- z1$Running_Pass_Depth[i]
  }
}




z1$Running_Pass_Depth<- z1$Running_Pass_Depth / z1$Running_Total



z2$Pass_Depth<- z2$PYD/z2$N

for(i in 2:length(z2$N)) {
  if(z2$DEFENSE[i] == z2$DEFENSE[i-1] ) {
    z2$Pass_Depth[i]<- z2$PYD[i-1]/z2$N[i-1]
  }else{
    z2$Pass_Depth[i]<- z2$Pass_Depth[i]
  }
}

z2$Running_Pass_Depth<- z2$Pass_Depth

for(i in 2:length(z2$N)) {
  if(z2$DEFENSE[i] == z2$DEFENSE[i-1] ) {
    z2$Running_Pass_Depth[i]<- z2$Running_Pass_Depth[i-1]/z2$Adjustor[i-1] + z2$Pass_Depth[i]
  }else{
    z2$Running_Pass_Depth[i]<- z2$Running_Pass_Depth[i]
  }
}


z2$Running_Pass_Depth<- z2$Running_Pass_Depth / z2$Running_Total



### Short ###


z1$Short_Att<- z1$Short/z1$N

for(i in 2:length(z1$N)) {
  if(z1$OFFENSE[i] == z1$OFFENSE[i-1] ) {
    z1$Short_Att[i]<- z1$Short[i-1]/z1$N[i-1]
  }else{
    z1$Short_Att[i]<- z1$Short_Att[i]
  }
}

z1$Running_Short_Att<- z1$Short_Att

for(i in 2:length(z1$N)) {
  if(z1$OFFENSE[i] == z1$OFFENSE[i-1] ) {
    z1$Running_Short_Att[i]<- z1$Running_Short_Att[i-1]/z1$Adjustor[i-1] + z1$Short_Att[i]
  }else{
    z1$Running_Short_Att[i]<- z1$Running_Short_Att[i]
  }
}




z1$Running_Short_Att<- z1$Running_Short_Att / z1$Running_Total



z2$Short_Att<- z2$Short/z2$N

for(i in 2:length(z2$N)) {
  if(z2$DEFENSE[i] == z2$DEFENSE[i-1] ) {
    z2$Short_Att[i]<- z2$Short[i-1]/z2$N[i-1]
  }else{
    z2$Short_Att[i]<- z2$Short_Att[i]
  }
}

z2$Running_Short_Att<- z2$Short_Att

for(i in 2:length(z2$N)) {
  if(z2$DEFENSE[i] == z2$DEFENSE[i-1] ) {
    z2$Running_Short_Att[i]<- z2$Running_Short_Att[i-1]/z2$Adjustor[i-1] + z2$Short_Att[i]
  }else{
    z2$Running_Short_Att[i]<- z2$Running_Short_Att[i]
  }
}


z2$Running_Short_Att<- z2$Running_Short_Att / z2$Running_Total


### Screen ###


z1$Screen_Att<- z1$Screen/z1$N

for(i in 2:length(z1$N)) {
  if(z1$OFFENSE[i] == z1$OFFENSE[i-1] ) {
    z1$Screen_Att[i]<- z1$Screen[i-1]/z1$N[i-1]
  }else{
    z1$Screen_Att[i]<- z1$Screen_Att[i]
  }
}

z1$Running_Screen_Att<- z1$Screen_Att

for(i in 2:length(z1$N)) {
  if(z1$OFFENSE[i] == z1$OFFENSE[i-1] ) {
    z1$Running_Screen_Att[i]<- z1$Running_Screen_Att[i-1]/z1$Adjustor[i-1] + z1$Screen_Att[i]
  }else{
    z1$Running_Screen_Att[i]<- z1$Running_Screen_Att[i]
  }
}




z1$Running_Screen_Att<- z1$Running_Screen_Att / z1$Running_Total



z2$Screen_Att<- z2$Screen/z2$N

for(i in 2:length(z2$N)) {
  if(z2$DEFENSE[i] == z2$DEFENSE[i-1] ) {
    z2$Screen_Att[i]<- z2$Screen[i-1]/z2$N[i-1]
  }else{
    z2$Screen_Att[i]<- z2$Screen_Att[i]
  }
}

z2$Running_Screen_Att<- z2$Screen_Att

for(i in 2:length(z2$N)) {
  if(z2$DEFENSE[i] == z2$DEFENSE[i-1] ) {
    z2$Running_Screen_Att[i]<- z2$Running_Screen_Att[i-1]/z2$Adjustor[i-1] + z2$Screen_Att[i]
  }else{
    z2$Running_Screen_Att[i]<- z2$Running_Screen_Att[i]
  }
}


z2$Running_Screen_Att<- z2$Running_Screen_Att / z2$Running_Total

str(z1)


##### FINISHED ######
z1 <- subset(z1, select = -c(Pressure, Hit, PYD, Short, Screen, N, Adjustor, Running_Total))

z2 <- subset(z2, select = -c(Pressure, Hit, PYD, Short, Screen, N, Adjustor, Running_Total))


g<- z1[which(z1$OFFENSE=='SF' & z1$YEAR==2006), ]

str(z1)
table(z2$DEFENSE)



write.csv(z1, "~/offense_stats.csv")
write.csv(z2, "~/defense_stats.csv")

##### TEAM PROFILE #####


############################# Team PROFILE ##############################################
library(dplyr)
library(gtools)
str(W$PYD)
table(W$PYD)
W$PYD<- ifelse(W$PYD=='NEED', NA, W$PYD)
mean(W$PYD, na.rm = TRUE)
head(W$PYD)
str(W$PYD)
sum(is.na(as.numeric(as.character(W$PYD)))==TRUE)


W$QBRs<- as.character(W$QBRs)

table(W$QBRs)
table(W$PYD)
str(W$PYD)
W$PYD<- as.numeric(W$PYD)


sum(W$Scramble)
W$PYD<- ifelse(is.na(W$PYD)==TRUE, mean(W$PYD, na.rm = TRUE), W$PYD) 

sum(is.na(W$PYD)==TRUE)

sum(W$Short)
sum(W$Screen)

str(W$PYD)
z1<- W %>%
  group_by(YEAR, WEEK, OFFENSE) %>%
  dplyr::summarize(Pressure = sum(PP, na.rm=TRUE), Hit = sum(Hit), PYD = sum(PYD), Short = sum(Short), Screen = sum(Screen), N=n())


z2<- W %>%
  group_by(YEAR, WEEK, DEFENSE) %>%
  dplyr::summarize(Pressure = mean(PP, na.rm=TRUE), Hit = mean(Hit), PYD = mean(PYD), Short = mean(Short), Screen = mean(Screen))

table(z1$QBRs)

sum(is.na(z1$Hit)==TRUE)


z1$WEEK<- as.integer(z1$WEEK)
str(z1$WEEK)
z1<- z1[order(z1$QBRs, z1$YEAR, z1$WEEK),]
str(z1$Pressure)
mean(z1$Pressure)

### Pressure ###




z1$Running_Weighted_Pressure<-mean(z1$Pressure)
for(i in 2:length(z1$QBRs)) {
  if(z1$QBRs[i] == z1$QBRs[i-1]) {
    z1$Running_Weighted_Pressure[i]<- z1$Running_Weighted_Pressure[i-1] + z1$Pressure[i-1]
  }else{
    z1$Running_Weighted_Pressure[i]<-mean(z1$Pressure)
  }
}

z1$Running_Weighted_Total<-mean(z1$N)
for(i in 2:length(z1$QBRs)) {
  if(z1$QBRs[i] == z1$QBRs[i-1]) {
    z1$Running_Weighted_Total[i]<- z1$Running_Weighted_Total[i-1] + z1$N[i-1]
  }else{
    z1$Running_Weighted_Total[i]<- mean(z1$N)
  }
}


z1$Weighted_Rolling_Pressure<- z1$Running_Weighted_Pressure/z1$Running_Weighted_Total


### Hit ###



z1$Running_Weighted_Hit<-mean(z1$Hit)
for(i in 2:length(z1$QBRs)) {
  if(z1$QBRs[i] == z1$QBRs[i-1]) {
    z1$Running_Weighted_Hit[i]<- z1$Running_Weighted_Hit[i-1] + z1$Hit[i-1]
  }else{
    z1$Running_Weighted_Hit[i]<-mean(z1$Hit)
  }
}


z1$Weighted_Rolling_Hit<- z1$Running_Weighted_Hit/z1$Running_Weighted_Total

v<- z1[which(z1$QBRs=='M.Moore'),]


### PYD ###


z1$Running_Weighted_PYD<-mean(z1$PYD)
for(i in 2:length(z1$QBRs)) {
  if(z1$QBRs[i] == z1$QBRs[i-1]) {
    z1$Running_Weighted_PYD[i]<- z1$Running_Weighted_PYD[i-1] + z1$PYD[i-1]
  }else{
    z1$Running_Weighted_PYD[i]<-mean(z1$PYD)
  }
}



z1$Weighted_Rolling_PYD<- z1$Running_Weighted_PYD/z1$Running_Weighted_Total


### Short ###


z1$Running_Weighted_Short<-mean(z1$Short)
for(i in 2:length(z1$QBRs)) {
  if(z1$QBRs[i] == z1$QBRs[i-1]) {
    z1$Running_Weighted_Short[i]<- z1$Running_Weighted_Short[i-1] + z1$Short[i-1]
  }else{
    z1$Running_Weighted_Short[i]<-mean(z1$Short)
  }
}



z1$Weighted_Rolling_Short<- z1$Running_Weighted_Short/z1$Running_Weighted_Total


### Screen ###


z1$Running_Weighted_Screen<-mean(z1$Screen)
for(i in 2:length(z1$QBRs)) {
  if(z1$QBRs[i] == z1$QBRs[i-1]) {
    z1$Running_Weighted_Screen[i]<- z1$Running_Weighted_Screen[i-1] + z1$Screen[i-1]
  }else{
    z1$Running_Weighted_Screen[i]<-mean(z1$Screen)
  }
}



z1$Weighted_Rolling_Screen<- z1$Running_Weighted_Screen/z1$Running_Weighted_Total


mean(z2$Pressure[which(z2$QBRs=='backup'),])

z2[which(z2$QBRs=='backup'),]$Pressure

z1$Weighted_Rolling_Pressure<- ifelse(z1$QBRs=='backup', z2[which(z2$QBRs=='backup'),]$Pressure, z1$Weighted_Rolling_Pressure)
z1$Weighted_Rolling_Hit<- ifelse(z1$QBRs=='backup', z2[which(z2$QBRs=='backup'),]$Hit, z1$Weighted_Rolling_Hit)
z1$Weighted_Rolling_PYD<- ifelse(z1$QBRs=='backup', z2[which(z2$QBRs=='backup'),]$PYD, z1$Weighted_Rolling_PYD)
z1$Weighted_Rolling_Short<- ifelse(z1$QBRs=='backup', z2[which(z2$QBRs=='backup'),]$Short, z1$Weighted_Rolling_Short)
z1$Weighted_Rolling_Screen<- ifelse(z1$QBRs=='backup', z2[which(z2$QBRs=='backup'),]$Screen, z1$Weighted_Rolling_Screen)

z1$Weighted_Rolling_Pressure<- ifelse(z1$QBRs=='third string', z2[which(z2$QBRs=='third string'),]$Pressure, z1$Weighted_Rolling_Pressure)
z1$Weighted_Rolling_Hit<- ifelse(z1$QBRs=='third string', z2[which(z2$QBRs=='third string'),]$Hit, z1$Weighted_Rolling_Hit)
z1$Weighted_Rolling_PYD<- ifelse(z1$QBRs=='third string', z2[which(z2$QBRs=='third string'),]$Hit, z1$Weighted_Rolling_PYD)
z1$Weighted_Rolling_Short<- ifelse(z1$QBRs=='third string', z2[which(z2$QBRs=='third string'),]$Short, z1$Weighted_Rolling_Short)
z1$Weighted_Rolling_Screen<- ifelse(z1$QBRs=='third string', z2[which(z2$QBRs=='third string'),]$Screen, z1$Weighted_Rolling_Screen)

z1<- z1[which(z1$QBRs!='get rid'),]



z3<- z1 %>%
  group_by(QBRs) %>%
  dplyr::summarize(Pressure = mean(Weighted_Rolling_Pressure, na.rm=TRUE), Hit = mean(Weighted_Rolling_Hit), PYD = mean(Weighted_Rolling_PYD))

z3<- z3[order(-z3$PYD),]

str(z1)

z1 <- subset(z1, select = -c(Pressure, Hit, PYD, Running_Weighted_Pressure, Running_Weighted_Hit, Running_Weighted_PYD,
                             Running_Weighted_Short, Running_Weighted_Screen, Running_Weighted_Total, N))



z1<- z1[order(z1$QBRs, z1$YEAR, z1$WEEK),]

str(z1)

write.csv(z1, "~/qb_stats.csv")
############################# CREATE QB PROFILE ##############################################











############################# CREATE QB PROFILE ##############################################
library(dplyr)
library(gtools)
str(W$PYD)
table(W$PYD)
W$PYD<- ifelse(W$PYD=='NEED', NA, W$PYD)
mean(W$PYD, na.rm = TRUE)
head(W$PYD)
str(W$PYD)
sum(is.na(as.numeric(as.character(W$PYD)))==TRUE)


W$QBRs<- as.character(W$QBRs)

table(W$QBRs)
table(W$PYD)
str(W$PYD)
W$PYD<- as.numeric(W$PYD)


sum(W$Scramble)
W$PYD<- ifelse(is.na(W$PYD)==TRUE, mean(W$PYD, na.rm = TRUE), W$PYD) 

sum(is.na(W$PYD)==TRUE)

sum(W$Short)
sum(W$Screen)

str(W$PYD)
z1<- W %>%
  group_by(QBRs, WEEK, YEAR) %>%
  dplyr::summarize(Pressure = sum(PP, na.rm=TRUE), Hit = sum(Hit), PYD = sum(PYD), Short = sum(Short), Screen = sum(Screen), N=n())


z2<- W %>%
  group_by(QBRs) %>%
  dplyr::summarize(Pressure = mean(PP, na.rm=TRUE), Hit = mean(Hit), PYD = mean(PYD), Short = mean(Short), Screen = mean(Screen))

table(z1$QBRs)

sum(is.na(z1$Hit)==TRUE)


z1$WEEK<- as.integer(z1$WEEK)
str(z1$WEEK)
z1<- z1[order(z1$QBRs, z1$YEAR, z1$WEEK),]
str(z1$Pressure)
mean(z1$Pressure)

### Pressure ###




z1$Running_Weighted_Pressure<-mean(z1$Pressure)
for(i in 2:length(z1$QBRs)) {
  if(z1$QBRs[i] == z1$QBRs[i-1]) {
    z1$Running_Weighted_Pressure[i]<- z1$Running_Weighted_Pressure[i-1] + z1$Pressure[i-1]
  }else{
    z1$Running_Weighted_Pressure[i]<-mean(z1$Pressure)
  }
}

z1$Running_Weighted_Total<-mean(z1$N)
for(i in 2:length(z1$QBRs)) {
  if(z1$QBRs[i] == z1$QBRs[i-1]) {
    z1$Running_Weighted_Total[i]<- z1$Running_Weighted_Total[i-1] + z1$N[i-1]
  }else{
    z1$Running_Weighted_Total[i]<- mean(z1$N)
  }
}


z1$Weighted_Rolling_Pressure<- z1$Running_Weighted_Pressure/z1$Running_Weighted_Total


### Hit ###



z1$Running_Weighted_Hit<-mean(z1$Hit)
for(i in 2:length(z1$QBRs)) {
  if(z1$QBRs[i] == z1$QBRs[i-1]) {
    z1$Running_Weighted_Hit[i]<- z1$Running_Weighted_Hit[i-1] + z1$Hit[i-1]
  }else{
    z1$Running_Weighted_Hit[i]<-mean(z1$Hit)
  }
}


z1$Weighted_Rolling_Hit<- z1$Running_Weighted_Hit/z1$Running_Weighted_Total

v<- z1[which(z1$QBRs=='M.Moore'),]


### PYD ###


z1$Running_Weighted_PYD<-mean(z1$PYD)
for(i in 2:length(z1$QBRs)) {
  if(z1$QBRs[i] == z1$QBRs[i-1]) {
    z1$Running_Weighted_PYD[i]<- z1$Running_Weighted_PYD[i-1] + z1$PYD[i-1]
  }else{
    z1$Running_Weighted_PYD[i]<-mean(z1$PYD)
  }
}



z1$Weighted_Rolling_PYD<- z1$Running_Weighted_PYD/z1$Running_Weighted_Total


### Short ###


z1$Running_Weighted_Short<-mean(z1$Short)
for(i in 2:length(z1$QBRs)) {
  if(z1$QBRs[i] == z1$QBRs[i-1]) {
    z1$Running_Weighted_Short[i]<- z1$Running_Weighted_Short[i-1] + z1$Short[i-1]
  }else{
    z1$Running_Weighted_Short[i]<-mean(z1$Short)
  }
}



z1$Weighted_Rolling_Short<- z1$Running_Weighted_Short/z1$Running_Weighted_Total


### Screen ###


z1$Running_Weighted_Screen<-mean(z1$Screen)
for(i in 2:length(z1$QBRs)) {
  if(z1$QBRs[i] == z1$QBRs[i-1]) {
    z1$Running_Weighted_Screen[i]<- z1$Running_Weighted_Screen[i-1] + z1$Screen[i-1]
  }else{
    z1$Running_Weighted_Screen[i]<-mean(z1$Screen)
  }
}



z1$Weighted_Rolling_Screen<- z1$Running_Weighted_Screen/z1$Running_Weighted_Total


mean(z2$Pressure[which(z2$QBRs=='backup'),])

z2[which(z2$QBRs=='backup'),]$Pressure

z1$Weighted_Rolling_Pressure<- ifelse(z1$QBRs=='backup', z2[which(z2$QBRs=='backup'),]$Pressure, z1$Weighted_Rolling_Pressure)
z1$Weighted_Rolling_Hit<- ifelse(z1$QBRs=='backup', z2[which(z2$QBRs=='backup'),]$Hit, z1$Weighted_Rolling_Hit)
z1$Weighted_Rolling_PYD<- ifelse(z1$QBRs=='backup', z2[which(z2$QBRs=='backup'),]$PYD, z1$Weighted_Rolling_PYD)
z1$Weighted_Rolling_Short<- ifelse(z1$QBRs=='backup', z2[which(z2$QBRs=='backup'),]$Short, z1$Weighted_Rolling_Short)
z1$Weighted_Rolling_Screen<- ifelse(z1$QBRs=='backup', z2[which(z2$QBRs=='backup'),]$Screen, z1$Weighted_Rolling_Screen)

z1$Weighted_Rolling_Pressure<- ifelse(z1$QBRs=='third string', z2[which(z2$QBRs=='third string'),]$Pressure, z1$Weighted_Rolling_Pressure)
z1$Weighted_Rolling_Hit<- ifelse(z1$QBRs=='third string', z2[which(z2$QBRs=='third string'),]$Hit, z1$Weighted_Rolling_Hit)
z1$Weighted_Rolling_PYD<- ifelse(z1$QBRs=='third string', z2[which(z2$QBRs=='third string'),]$Hit, z1$Weighted_Rolling_PYD)
z1$Weighted_Rolling_Short<- ifelse(z1$QBRs=='third string', z2[which(z2$QBRs=='third string'),]$Short, z1$Weighted_Rolling_Short)
z1$Weighted_Rolling_Screen<- ifelse(z1$QBRs=='third string', z2[which(z2$QBRs=='third string'),]$Screen, z1$Weighted_Rolling_Screen)

z1<- z1[which(z1$QBRs!='get rid'),]



z3<- z1 %>%
  group_by(QBRs) %>%
  dplyr::summarize(Pressure = mean(Weighted_Rolling_Pressure, na.rm=TRUE), Hit = mean(Weighted_Rolling_Hit), PYD = mean(Weighted_Rolling_PYD))

z3<- z3[order(-z3$PYD),]

str(z1)

z1 <- subset(z1, select = -c(Pressure, Hit, PYD, Running_Weighted_Pressure, Running_Weighted_Hit, Running_Weighted_PYD,
                             Running_Weighted_Short, Running_Weighted_Screen, Running_Weighted_Total, N))



z1<- z1[order(z1$QBRs, z1$YEAR, z1$WEEK),]

str(z1)

write.csv(z1, "~/qb_stats.csv")
############################# CREATE QB PROFILE ##############################################


sum(W$BB)
sum(W$Blitz)

v<- W[ which(W$Blitz==1), ]
W<- W[order(W$R),]

######## Pressure Project Messaged ###############
pressure_project_massaged<- W

# pressure_project_massaged<- pressure_project_massaged[-1]


pressure_project_massaged<- pressure_project_massaged[order(pressure_project_massaged$YEAR, 
                                                            pressure_project_massaged$OFFENSE, pressure_project_massaged$WEEK, pressure_project_massaged$QTR, 
                                                            -pressure_project_massaged$Timing),]


table(pressure_project_massaged$RECEPT)
str(pressure_project_massaged$RECEPT)


sum(pressure_project_massaged$Scramble)


pressure_project_massaged$pressure_lag_1<-0
for(i in 2:length(pressure_project_massaged$R)) {
  if(pressure_project_massaged$OFFENSE[i] == pressure_project_massaged$OFFENSE[i-1] & 
     pressure_project_massaged$WEEK[i] == pressure_project_massaged$WEEK[i-1] &
     pressure_project_massaged$YEAR[i] == pressure_project_massaged$YEAR[i-1] & pressure_project_massaged$PP[i-1]==1) {
    pressure_project_massaged$pressure_lag_1[i]<- 1
  }else{
    pressure_project_massaged$pressure_lag_1[i]<- 0
  }
}


pressure_project_massaged$pressure_lag_2<-0
for(i in 3:length(pressure_project_massaged$R)) {
  if(pressure_project_massaged$OFFENSE[i] == pressure_project_massaged$OFFENSE[i-2] & 
     pressure_project_massaged$WEEK[i] == pressure_project_massaged$WEEK[i-2] &
     pressure_project_massaged$YEAR[i] == pressure_project_massaged$YEAR[i-2] & pressure_project_massaged$PP[i-2]==1) {
    pressure_project_massaged$pressure_lag_2[i]<- 1
  }else{
    pressure_project_massaged$pressure_lag_2[i]<- 0
  }
}


pressure_project_massaged$pressure_lag_3<-0
for(i in 4:length(pressure_project_massaged$R)) {
  if(pressure_project_massaged$OFFENSE[i] == pressure_project_massaged$OFFENSE[i-3] & 
     pressure_project_massaged$WEEK[i] == pressure_project_massaged$WEEK[i-3] &
     pressure_project_massaged$YEAR[i] == pressure_project_massaged$YEAR[i-3] & pressure_project_massaged$PP[i-3]==1) {
    pressure_project_massaged$pressure_lag_3[i]<- 1
  }else{
    pressure_project_massaged$pressure_lag_3[i]<- 0
  }
}

pressure_project_massaged$pressure_lag_4<-0
for(i in 5:length(pressure_project_massaged$R)) {
  if(pressure_project_massaged$OFFENSE[i] == pressure_project_massaged$OFFENSE[i-4] & 
     pressure_project_massaged$WEEK[i] == pressure_project_massaged$WEEK[i-4] &
     pressure_project_massaged$YEAR[i] == pressure_project_massaged$YEAR[i-4] & pressure_project_massaged$PP[i-4]==1) {
    pressure_project_massaged$pressure_lag_4[i]<- 1
  }else{
    pressure_project_massaged$pressure_lag_4[i]<- 0
  }
}

pressure_project_massaged$pressure_lag_5<-0
for(i in 6:length(pressure_project_massaged$R)) {
  if(pressure_project_massaged$OFFENSE[i] == pressure_project_massaged$OFFENSE[i-5] & 
     pressure_project_massaged$WEEK[i] == pressure_project_massaged$WEEK[i-5] &
     pressure_project_massaged$YEAR[i] == pressure_project_massaged$YEAR[i-5] & pressure_project_massaged$PP[i-5]==1) {
    pressure_project_massaged$pressure_lag_5[i]<- 1
  }else{
    pressure_project_massaged$pressure_lag_5[i]<- 0
  }
}


pressure_project_massaged$pressure_lag_6<-0
for(i in 7:length(pressure_project_massaged$R)) {
  if(pressure_project_massaged$OFFENSE[i] == pressure_project_massaged$OFFENSE[i-6] & 
     pressure_project_massaged$WEEK[i] == pressure_project_massaged$WEEK[i-6] &
     pressure_project_massaged$YEAR[i] == pressure_project_massaged$YEAR[i-6] & pressure_project_massaged$PP[i-6]==1) {
    pressure_project_massaged$pressure_lag_6[i]<- 1
  }else{
    pressure_project_massaged$pressure_lag_6[i]<- 0
  }
}


pressure_project_massaged$pressure_lag_7<-0
for(i in 8:length(pressure_project_massaged$R)) {
  if(pressure_project_massaged$OFFENSE[i] == pressure_project_massaged$OFFENSE[i-7] & 
     pressure_project_massaged$WEEK[i] == pressure_project_massaged$WEEK[i-7] &
     pressure_project_massaged$YEAR[i] == pressure_project_massaged$YEAR[i-7] & pressure_project_massaged$PP[i-7]==1) {
    pressure_project_massaged$pressure_lag_7[i]<- 1
  }else{
    pressure_project_massaged$pressure_lag_7[i]<- 0
  }
}

pressure_project_massaged$pressure_lag_8<-0
for(i in 9:length(pressure_project_massaged$R)) {
  if(pressure_project_massaged$OFFENSE[i] == pressure_project_massaged$OFFENSE[i-8] & 
     pressure_project_massaged$WEEK[i] == pressure_project_massaged$WEEK[i-8] &
     pressure_project_massaged$YEAR[i] == pressure_project_massaged$YEAR[i-8] & pressure_project_massaged$PP[i-8]==1) {
    pressure_project_massaged$pressure_lag_8[i]<- 1
  }else{
    pressure_project_massaged$pressure_lag_8[i]<- 0
  }
}

sort(table(pressure_project_massaged$FORMATION), decreasing = T)
str(pressure_project_massaged$FORMATION)
pressure_project_massaged$FORMATION<- tolower(pressure_project_massaged$FORMATION)

### SLOT ###
pressure_project_massaged$Slot<- ifelse(grepl('slot', pressure_project_massaged$FORMATION, useBytes = TRUE),1,0)
pressure_project_massaged$Slot<- ifelse(grepl('Slot', pressure_project_massaged$FORMATION, useBytes = TRUE),1, pressure_project_massaged$Slot)
pressure_project_massaged$Slot<- ifelse(grepl('slot', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1, pressure_project_massaged$Slot)
pressure_project_massaged$Slot<- ifelse(grepl('Slot', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1, pressure_project_massaged$Slot)
table(pressure_project_massaged$Slot)

### TRIPS ###
pressure_project_massaged$Trips<- ifelse(grepl('trips', pressure_project_massaged$FORMATION, useBytes = TRUE), 1, 0)
pressure_project_massaged$Trips<- ifelse(grepl('Trips', pressure_project_massaged$FORMATION, useBytes = TRUE), 1, pressure_project_massaged$Trips)

pressure_project_massaged$Trips<- ifelse(grepl('trips', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1, pressure_project_massaged$Trips)
pressure_project_massaged$Trips<- ifelse(grepl('Trips', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1, pressure_project_massaged$Trips)

table(pressure_project_massaged$Trips)

### EMPTY ###
pressure_project_massaged$Empty<- ifelse(grepl('Empty', pressure_project_massaged$FORMATION, useBytes = TRUE),1,0)
pressure_project_massaged$Empty<- ifelse(grepl('empty', pressure_project_massaged$FORMATION, useBytes = TRUE),1,pressure_project_massaged$Empty)

pressure_project_massaged$Empty<- ifelse(grepl('Empty', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1, pressure_project_massaged$Empty)
pressure_project_massaged$Empty<- ifelse(grepl('empty', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1, pressure_project_massaged$Empty)


#### SINGLE ####
pressure_project_massaged$Single<- ifelse(grepl('Single', pressure_project_massaged$FORMATION, useBytes = TRUE),1,0)
pressure_project_massaged$Single<- ifelse(grepl('single', pressure_project_massaged$FORMATION, useBytes = TRUE),1,pressure_project_massaged$Single)


pressure_project_massaged$Single<- ifelse(grepl('Single', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1, pressure_project_massaged$Single)
pressure_project_massaged$Single<- ifelse(grepl('single', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1,pressure_project_massaged$Single)


### SHOTGUN ###
pressure_project_massaged$Shotgun<- ifelse(grepl('Pistol', pressure_project_massaged$FORMATION, useBytes = TRUE),1,pressure_project_massaged$Shotgun)
pressure_project_massaged$Shotgun<- ifelse(grepl('pistol', pressure_project_massaged$FORMATION, useBytes = TRUE),1,pressure_project_massaged$Shotgun)

pressure_project_massaged$Shotgun<- ifelse(grepl('Pistol', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1, pressure_project_massaged$Shotgun)
pressure_project_massaged$Shotgun<- ifelse(grepl('pistol', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1, pressure_project_massaged$Shotgun)


### BUNCH ####
pressure_project_massaged$Bunch<- ifelse(grepl('Bunch', pressure_project_massaged$FORMATION, useBytes = TRUE),1,0)
pressure_project_massaged$Bunch<- ifelse(grepl('bunch', pressure_project_massaged$FORMATION, useBytes = TRUE),1,pressure_project_massaged$Bunch)

pressure_project_massaged$Bunch<- ifelse(grepl('Bunch', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1,pressure_project_massaged$Bunch)
pressure_project_massaged$Bunch<- ifelse(grepl('bunch', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1,pressure_project_massaged$Bunch)


### TWINS ###

pressure_project_massaged$Twins<- ifelse(grepl('Twins', pressure_project_massaged$FORMATION, useBytes = TRUE),1,0)
pressure_project_massaged$Twins<- ifelse(grepl('Twin', pressure_project_massaged$FORMATION, useBytes = TRUE),1,pressure_project_massaged$Twins)
pressure_project_massaged$Twins<- ifelse(grepl('twins', pressure_project_massaged$FORMATION, useBytes = TRUE),1,pressure_project_massaged$Twins)
pressure_project_massaged$Twins<- ifelse(grepl('twin', pressure_project_massaged$FORMATION, useBytes = TRUE),1,pressure_project_massaged$Twins)


pressure_project_massaged$Twins<- ifelse(grepl('Twins', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1, pressure_project_massaged$Twins)
pressure_project_massaged$Twins<- ifelse(grepl('Twin', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1, pressure_project_massaged$Twins)
pressure_project_massaged$Twins<- ifelse(grepl('twins', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1,pressure_project_massaged$Twins)
pressure_project_massaged$Twins<- ifelse(grepl('twin', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1,pressure_project_massaged$Twins)



### STACKED ###

pressure_project_massaged$Stacked<- ifelse(grepl('stacked', pressure_project_massaged$FORMATION, useBytes = TRUE),1,0)
pressure_project_massaged$Stacked<- ifelse(grepl('Stacked', pressure_project_massaged$FORMATION, useBytes = TRUE),1,pressure_project_massaged$Stacked)
pressure_project_massaged$Stacked<- ifelse(grepl('Stack', pressure_project_massaged$FORMATION, useBytes = TRUE),1,pressure_project_massaged$Stacked)
pressure_project_massaged$Stacked<- ifelse(grepl('stack', pressure_project_massaged$FORMATION, useBytes = TRUE),1,pressure_project_massaged$Stacked)
pressure_project_massaged$Stacked<- ifelse(grepl('tight', pressure_project_massaged$FORMATION, useBytes = TRUE),1,pressure_project_massaged$Stacked)
pressure_project_massaged$Stacked<- ifelse(grepl('Tight', pressure_project_massaged$FORMATION, useBytes = TRUE),1,pressure_project_massaged$Stacked)

pressure_project_massaged$Stacked<- ifelse(grepl('stacked', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1, pressure_project_massaged$Stacked)
pressure_project_massaged$Stacked<- ifelse(grepl('Stacked', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1, pressure_project_massaged$Stacked)
pressure_project_massaged$Stacked<- ifelse(grepl('Stack', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1,pressure_project_massaged$Stacked)
pressure_project_massaged$Stacked<- ifelse(grepl('stack', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1,pressure_project_massaged$Stacked)
pressure_project_massaged$Stacked<- ifelse(grepl('tight', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1,pressure_project_massaged$Stacked)
pressure_project_massaged$Stacked<- ifelse(grepl('Tight', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1,pressure_project_massaged$Stacked)


### I FORMATION ###

pressure_project_massaged$I_Formation<- ifelse(grepl('i formation', pressure_project_massaged$FORMATION, useBytes = TRUE),1,0)
pressure_project_massaged$I_Formation<- ifelse(grepl('I Formation', pressure_project_massaged$FORMATION, useBytes = TRUE),1,pressure_project_massaged$I_Formation)
pressure_project_massaged$I_Formation<- ifelse(grepl('i Formation', pressure_project_massaged$FORMATION, useBytes = TRUE),1,pressure_project_massaged$I_Formation)
pressure_project_massaged$I_Formation<- ifelse(grepl('I formation', pressure_project_massaged$FORMATION, useBytes = TRUE),1,pressure_project_massaged$I_Formation)

pressure_project_massaged$I_Formation<- ifelse(grepl('i formation', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1, pressure_project_massaged$I_Formation)
pressure_project_massaged$I_Formation<- ifelse(grepl('I Formation', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1,pressure_project_massaged$I_Formation)
pressure_project_massaged$I_Formation<- ifelse(grepl('i Formation', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1,pressure_project_massaged$I_Formation)
pressure_project_massaged$I_Formation<- ifelse(grepl('I formation', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1,pressure_project_massaged$I_Formation)

### OFFSET ###

pressure_project_massaged$Offset<- ifelse(grepl('offset', pressure_project_massaged$FORMATION, useBytes = TRUE),1,0)
pressure_project_massaged$Offset<- ifelse(grepl('Offset', pressure_project_massaged$FORMATION, useBytes = TRUE),1, pressure_project_massaged$Offset)

pressure_project_massaged$Offset<- ifelse(grepl('offset', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1, pressure_project_massaged$Offset)
pressure_project_massaged$Offset<- ifelse(grepl('Offset', pressure_project_massaged$XTRA_COMMENT, useBytes = TRUE),1, pressure_project_massaged$Offset)



table(pressure_project_massaged$Slot)
table(pressure_project_massaged$Trips)
table(pressure_project_massaged$Empty)
table(pressure_project_massaged$Single)
table(pressure_project_massaged$Bunch)
table(pressure_project_massaged$Stacked)
table(pressure_project_massaged$Offset)


table(pressure_project_massaged$YEAR, pressure_project_massaged$Slot)
table(pressure_project_massaged$YEAR, pressure_project_massaged$Trips)
table(pressure_project_massaged$YEAR, pressure_project_massaged$Empty)
table(pressure_project_massaged$YEAR, pressure_project_massaged$Single)
table(pressure_project_massaged$YEAR, pressure_project_massaged$Bunch)
table(pressure_project_massaged$YEAR, pressure_project_massaged$Stacked)
table(pressure_project_massaged$YEAR, pressure_project_massaged$Offset)


colnames(pressure_project_massaged)

head(pressure_project_massaged)
head(W)




#pressure_project_massaged$R<- W$R


#pressure_project_massaged$ACYDL<- W$ACYDL
#pressure_project_massaged$YDTM<- W$YDTM


sum(is.na(pressure_project_massaged$ACYDL))
sum(is.na(pressure_project_massaged$YDTM))
str(pressure_project_massaged$YDTM)
str(pressure_project_massaged$OFFENSE)
str(pressure_project_massaged$AWAY)
str(pressure_project_massaged$HOME)





f<- Charting[ which(is.na(Charting$ZONE)==TRUE), ]

f<- pressure_project_massaged[ which(is.na(pressure_project_massaged$ZONE)==TRUE), ]

pressure_project_massaged$ZONE<- ifelse(is.na(pressure_project_massaged$ZONE)==TRUE, 'RED1', pressure_project_massaged$ZONE)

#pressure_project_massaged<- pressure_project_massaged[order(pressure_project_massaged$YEAR, 
                                                            #pressure_project_massaged$HOME, pressure_project_massaged$WEEK, pressure_project_massaged$QTR, 
                                                            #-pressure_project_massaged$Timing),]


f<- pressure_project_massaged[ which(is.na(pressure_project_massaged$RECEPT)==TRUE), ]

pressure_project_massaged$RECEPT<- ifelse(is.na(pressure_project_massaged$RECEPT)==TRUE,'complete', pressure_project_massaged$RECEPT)




table(pressure_project_massaged$RECEPT)
pressure_project_massaged$Plays<- ifelse(pressure_project_massaged$RECEPT=='intentional grounding','sacked',pressure_project_massaged$RECEPT)
table(pressure_project_massaged$Plays)





str(pressure_project_massaged$RECEPT)
table(pressure_project_massaged$DIRECTION)

pressure_project_massaged$Play_Type<- ifelse((grepl('short', pressure_project_massaged$DIRECTION) & pressure_project_massaged$RECEPT!=""), 
                                             paste(pressure_project_massaged$Plays, 'short', sep="-"), "")



pressure_project_massaged$Play_Type<- ifelse((grepl('deep', pressure_project_massaged$DIRECTION) & pressure_project_massaged$RECEPT!=""), 
                                             paste(pressure_project_massaged$Plays, 'deep', sep="-"), pressure_project_massaged$Play_Type)

table(pressure_project_massaged$Play_Type)


str(pressure_project_massaged$XTRA_COMMENT)



table(pressure_project_massaged$Maybe)

pressure_project_massaged$Coverage<- ifelse(pressure_project_massaged$Maybe==1, 1, pressure_project_massaged$Coverage)

table(pressure_project_massaged$Coverage)

pressure_project_massaged<- pressure_project_massaged[order(pressure_project_massaged$YEAR, 
                                                            pressure_project_massaged$OFFENSE, pressure_project_massaged$WEEK, pressure_project_massaged$QTR, 
                                                            -pressure_project_massaged$Timing),]


str(pressure_project_massaged$Play_Type)
pressure_project_massaged$Play_Type<-ifelse(pressure_project_massaged$Play_Type=="", 'complete-short',pressure_project_massaged$Play_Type)
table(pressure_project_massaged$Play_Type)


# write.csv(pressure_project_massaged, "~/pressure_project_messaged.csv")

str(pressure_project_massaged)

#pressure_project_massaged<- pressure_project_messaged[,-1]

pressure_project_massaged$Play_Type<- ifelse(grepl("incomplete lateral-short", pressure_project_massaged$Play_Type), "incomplete-short", 
                                             ifelse(grepl("lateral out of bounds-short", pressure_project_massaged$Play_Type), "complete-short",
                                                    ifelse(grepl("scramble-short", pressure_project_massaged$Play_Type), "complete-short", pressure_project_massaged$Play_Type)))

table(pressure_project_massaged$Play_Type)

pressure_project_massaged$Play_Result_1<-'complete-short'
for(i in 2:length(pressure_project_massaged$R)) {
  if(pressure_project_massaged$OFFENSE[i] == pressure_project_massaged$OFFENSE[i-1] & 
     pressure_project_massaged$WEEK[i] == pressure_project_massaged$WEEK[i-1] &
     pressure_project_massaged$YEAR[i] == pressure_project_massaged$YEAR[i-1]) {
    pressure_project_massaged$Play_Result_1[i]<-pressure_project_massaged$Play_Type[i-1]
  }else{
    pressure_project_massaged$Play_Result_1[i]<-'complete-short'
  }
}




pressure_project_massaged$Play_Result_2<-'complete-short'
for(i in 3:length(pressure_project_massaged$R)) {
  if(pressure_project_massaged$OFFENSE[i] == pressure_project_massaged$OFFENSE[i-2] & 
     pressure_project_massaged$WEEK[i] == pressure_project_massaged$WEEK[i-2] &
     pressure_project_massaged$YEAR[i] == pressure_project_massaged$YEAR[i-2]) {
    pressure_project_massaged$Play_Result_2[i]<-pressure_project_massaged$Play_Type[i-2]
  }else{
    pressure_project_massaged$Play_Result_2[i]<-'complete-short'
  }
}

pressure_project_massaged$Play_Result_3<-'complete-short'
for(i in 4:length(pressure_project_massaged$R)) {
  if(pressure_project_massaged$OFFENSE[i] == pressure_project_massaged$OFFENSE[i-3] & 
     pressure_project_massaged$WEEK[i] == pressure_project_massaged$WEEK[i-3] &
     pressure_project_massaged$YEAR[i] == pressure_project_massaged$YEAR[i-3]) {
    pressure_project_massaged$Play_Result_3[i]<-pressure_project_massaged$Play_Type[i-3]
  }else{
    pressure_project_massaged$Play_Result_3[i]<-'complete-short'
  }
}


sum(is.na(pressure_project_massaged$Play_Result_1))




table(pressure_project_massaged$Play_Type)


pressure_project_massaged$H<- ifelse(pressure_project_massaged$HOME==pressure_project_massaged$OFFENSE,1, -1)
table(pressure_project_massaged$H)
pressure_project_massaged<- pressure_project_massaged[order(pressure_project_massaged$YEAR, 
                                                            pressure_project_massaged$OFFENSE, pressure_project_massaged$WEEK, pressure_project_massaged$QTR, 
                                                            -pressure_project_massaged$Timing),]



pressure_project_massaged$H<- ifelse((pressure_project_massaged$HOME=='MIA' & pressure_project_massaged$AWAY=='NYG' & pressure_project_massaged$YEAR==2007) |
                                       (pressure_project_massaged$HOME=='NO' & pressure_project_massaged$AWAY=='SD' & pressure_project_massaged$YEAR==2008) |
                                       (pressure_project_massaged$HOME=='TB' & pressure_project_massaged$AWAY=='NE' & pressure_project_massaged$YEAR==2009) |
                                       (pressure_project_massaged$HOME=='SF' & pressure_project_massaged$AWAY=='DEN' & pressure_project_massaged$YEAR==2010) |
                                       (pressure_project_massaged$HOME=='TB' & pressure_project_massaged$AWAY=='CHI' & pressure_project_massaged$YEAR==2011) |
                                       (pressure_project_massaged$HOME=='LARM' & pressure_project_massaged$AWAY=='NE' & pressure_project_massaged$YEAR==2012) |
                                       (pressure_project_massaged$HOME=='MIN' & pressure_project_massaged$AWAY=='PIT' & pressure_project_massaged$YEAR==2013) |
                                       (pressure_project_massaged$HOME=='JAC' & pressure_project_massaged$AWAY=='SF' & pressure_project_massaged$YEAR==2013) |
                                       (pressure_project_massaged$HOME=='OAK' & pressure_project_massaged$AWAY=='MIA' & pressure_project_massaged$YEAR==2014) |
                                       (pressure_project_massaged$HOME=='ATL' & pressure_project_massaged$AWAY=='DET' & pressure_project_massaged$YEAR==2014) |
                                       (pressure_project_massaged$HOME=='JAC' & pressure_project_massaged$AWAY=='DAL' & pressure_project_massaged$YEAR==2014) |
                                       (pressure_project_massaged$HOME=='MIA' & pressure_project_massaged$AWAY=='NYJ' & pressure_project_massaged$YEAR==2015 & pressure_project_massaged$WEEK==4)  |
                                       (pressure_project_massaged$HOME=='JAC' & pressure_project_massaged$AWAY=='BUF' & pressure_project_massaged$YEAR==2015) |
                                       (pressure_project_massaged$HOME=='KC' & pressure_project_massaged$AWAY=='DET' & pressure_project_massaged$YEAR==2015) |
                                       (pressure_project_massaged$HOME=='JAC' & pressure_project_massaged$AWAY=='IND' & pressure_project_massaged$YEAR==2016 & pressure_project_massaged$WEEK==4)  |
                                       (pressure_project_massaged$HOME=='LARM' & pressure_project_massaged$AWAY=='NYG' & pressure_project_massaged$YEAR==2016) |
                                       (pressure_project_massaged$HOME=='CIN' & pressure_project_massaged$AWAY=='WAS' & pressure_project_massaged$YEAR==2016) |
                                       (pressure_project_massaged$HOME=='OAK' & pressure_project_massaged$AWAY=='HOU' & pressure_project_massaged$YEAR==2016) |
                                       (pressure_project_massaged$HOME=='JAG' & pressure_project_massaged$AWAY=='BAL' & pressure_project_massaged$YEAR==2017) |
                                       (pressure_project_massaged$HOME=='MIA' & pressure_project_massaged$AWAY=='NO' & pressure_project_massaged$YEAR==2017) |
                                       (pressure_project_massaged$HOME=='LARM' & pressure_project_massaged$AWAY=='ARI' & pressure_project_massaged$YEAR==2017 & pressure_project_massaged$WEEK==7)  |
                                       (pressure_project_massaged$HOME=='CLE' & pressure_project_massaged$AWAY=='MIN' & pressure_project_massaged$YEAR==2017)  |
                                       (pressure_project_massaged$HOME=='OAK' & pressure_project_massaged$AWAY=='NE' & pressure_project_massaged$YEAR==2017) |
                                       (pressure_project_massaged$HOME=='OAK' & pressure_project_massaged$AWAY=='SEA' & pressure_project_massaged$YEAR==2018) |
                                       (pressure_project_massaged$HOME=='LAC' & pressure_project_massaged$AWAY=='TEN' & pressure_project_massaged$YEAR==2018) |
                                       (pressure_project_massaged$HOME=='PHI' & pressure_project_massaged$AWAY=='JAC' & pressure_project_massaged$YEAR==2018)
                                     ,0, pressure_project_massaged$H)


pressure_project_massaged$H<-ifelse(pressure_project_massaged$HOME=='OAK' & pressure_project_massaged$AWAY=='CHI' & pressure_project_massaged$YEAR==2019, 0, pressure_project_massaged$H)
pressure_project_massaged$H<-ifelse(pressure_project_massaged$HOME=='TB' & pressure_project_massaged$AWAY=='CAR' & pressure_project_massaged$YEAR==2019, 0, pressure_project_massaged$H)
pressure_project_massaged$H<-ifelse(pressure_project_massaged$HOME=='LARM' & pressure_project_massaged$AWAY=='CIN' & pressure_project_massaged$YEAR==2019, 0, pressure_project_massaged$H)
pressure_project_massaged$H<-ifelse(pressure_project_massaged$HOME=='JAC' & pressure_project_massaged$AWAY=='HOU' & pressure_project_massaged$YEAR==2019, 0, pressure_project_massaged$H)
pressure_project_massaged$H<-ifelse(pressure_project_massaged$HOME=='LAC' & pressure_project_massaged$AWAY=='KC' & pressure_project_massaged$YEAR==2019, 0, pressure_project_massaged$H)

pressure_project_massaged$H<-ifelse(pressure_project_massaged$HOME=='NYJ' & pressure_project_massaged$AWAY=='NYG', 0, pressure_project_massaged$H)
pressure_project_massaged$H<-ifelse(pressure_project_massaged$HOME=='NYG' & pressure_project_massaged$AWAY=='NYJ', 0, pressure_project_massaged$H)

sum(is.na(pressure_project_massaged$H))

table(pressure_project_massaged$H)

write.csv(pressure_project_massaged, "pressure_project_massaged_1.csv")

table(pressure_project_massaged$YEAR==2006, pressure_project_massaged$QBR)

pressure_project_massaged<- pressure_project_massaged_1[-1]

pressure_project_massaged<- pressure_project_massaged[order(pressure_project_massaged$QBR, pressure_project_massaged$YEAR, 
                                                            pressure_project_massaged$WEEK, pressure_project_massaged$QTR, 
                                                            -pressure_project_massaged$Timing),]


pressure_project_massaged$GS<- 0
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='K.Warner', 73, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='M.Leinart', 1, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='M.Vick', 23, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='M.Schaub', 2, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='S.McNair', 121, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='K.Boller', 36, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='J.Losman', 13, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='J.Delhomme', 54, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='R.Grossman', 8, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='B.Griese', 75, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='C.Palmer', 29, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='C.Frye', 7, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='D.Anderson', 1, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='D.Bledsoe', 186, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='T.Romo', 1, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='J.Plummer', 127, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='J.Cutler', 1, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='J.Kitna', 92, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='B.Favre', 225, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='A.Rodgers', 3, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='D.Carr', 60, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='S.Rosenfels', 13, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='P.Manning', 128, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='B.Leftwich', 40, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='D.Garrard', 17, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='T.Green', 97, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='D.Huard', 38, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='B.Croyle', 1, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='P.Rivers', 4, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='M.Bulger', 44, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='G.Frerotte', 127, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='D.Culpepper', 81, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='J.Harrington', 58, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='C.Lemon', 1, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='B.Johnsons', 130, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='M.Moore', 1, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='T.Jackson', 1, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='T.Brady', 80, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='M.Cassel', 2, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='V.Testaverde', 203, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='S.Wallace', 7, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='D.Brees', 59, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='E.Manning', 25, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='C.Pennington', 44, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='K.Clemens', 1, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='A.Brooks', 85, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='A.Walter', 1, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='D.McNabb', 94, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='J.Garcia', 91, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='A.Feely', 18, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='C.Batch', 56, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='B.Roethlisberger', 26, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='M.Hasselbeck', 107, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='A.Smith', 9, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='B.Gradkowski', 1, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='K.Collins', 163, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='V.Young', 1, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='M.Brunell',147, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='J.Campbell', 1, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='C.Redman', 11, pressure_project_massaged$GS)


pressure_project_massaged$PC<- 0
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='K.Warner', 2340, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='M.Leinart', 1, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='M.Vick', 1663, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='M.Schaub', 66, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='S.McNair', 3871, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='K.Boller', 981, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='J.Losman', 231, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='J.Delhomme', 1503, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='R.Grossman',195, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='B.Griese', 2256, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='C.Palmer', 941, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='C.Frye', 164, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='D.Anderson', 1, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='D.Bledsoe', 6548, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='T.Romo', 1, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='J.Plummer', 4033, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='J.Cutler', 1, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='J.Kitna', 2837, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='B.Favre', 3741, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='A.Rodgers',16, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='D.Carr', 1628, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='S.Rosenfels', 109, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='P.Manning', 4333, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='B.Leftwich', 1161, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='D.Garrard', 298, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='T.Green', 3329, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='D.Huard', 289, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='B.Croyle', 1, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='P.Rivers', 30, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='M.Bulger', 1518, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='G.Frerotte', 2635, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='D.Culpepper', 2607, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='J.Harrington', 1802, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='C.Lemon', 1, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='B.Johnsons', 3798, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='M.Moore', 1, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='T.Jackson', 1, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='T.Brady', 2548, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='M.Cassel', 24, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='V.Testaverde', 6526, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='S.Wallace', 25, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='D.Brees', 1809, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='E.Manning', 754, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='C.Pennington', 1174, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='K.Clemens', 1, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='A.Brooks', 2771, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='A.Walter', 1, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='D.McNabb', 1828, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='J.Garcia', 2785, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='A.Feely', 524, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='C.Batch', 1370, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='B.Roethlisberger', 563, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='M.Hasselbeck', 2205, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='A.Smith',165, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='B.Gradkowski', 1, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='K.Collins', 5435, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='V.Young', 1, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='M.Brunell',4340, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='J.Campbell', 1, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='C.Redman', 198, pressure_project_massaged$PC)


pressure_project_massaged$GS<- 1
for(i in 2:length(pressure_project_massaged$R)) {
  if(pressure_project_massaged$QBR[i] == pressure_project_massaged$QBR[i-1] & 
     (pressure_project_massaged$WEEK[i] != pressure_project_massaged$WEEK[i-1] | 
      pressure_project_massaged$YEAR[i] != pressure_project_massaged$YEAR[i-1])){
    pressure_project_massaged$GS[i]<-pressure_project_massaged$GS[i-1] +1
  }else if(pressure_project_massaged$QBR[i] == pressure_project_massaged$QBR[i-1]) {
    pressure_project_massaged$GS[i]<-pressure_project_massaged$GS[i-1]
  }else{
    pressure_project_massaged$GS[i]<-pressure_project_massaged$GS[i]
  }
}



pressure_project_massaged$PC<- 1
for(i in 2:length(pressure_project_massaged$R)) {
  if(pressure_project_massaged$QBR[i] == pressure_project_massaged$QBR[i-1]) {
    pressure_project_massaged$PC[i]<-pressure_project_massaged$PC[i-1] +1
  }else{
    pressure_project_massaged$PC[i]<-pressure_project_massaged$PC[i]
  }
}

table(pressure_project_massaged$QBR)

pressure_project_massaged<- pressure_project_massaged[order(pressure_project_massaged$YEAR, 
                                                            pressure_project_massaged$OFFENSE, pressure_project_massaged$WEEK, pressure_project_massaged$QTR, 
                                                            -pressure_project_massaged$Timing),]

pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='third string', 10, pressure_project_massaged$GS)
pressure_project_massaged$GS<- ifelse(pressure_project_massaged$QBR=='backup', 25, pressure_project_massaged$GS)

pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='third string', 50, pressure_project_massaged$PC)
pressure_project_massaged$PC<- ifelse(pressure_project_massaged$QBR=='backup', 110, pressure_project_massaged$PC)

table(pressure_project_massaged$QBRs=='get rid')
pressure_project_massaged<- pressure_project_massaged[ which(pressure_project_massaged$QBR!='get rid'), ]


pressure_project_massaged$Possession_Diff<- ceiling(pressure_project_massaged$GAP/8)


table(pressure_project_massaged$RECEPT)

pressure_project_massaged$Scramble_1<- 0
for(i in 2:(length(pressure_project_massaged$R))) {
  if(pressure_project_massaged$OFFENSE[i] == pressure_project_massaged$OFFENSE[i-1]){
    pressure_project_massaged$Scramble_1[i]<- pressure_project_massaged$Scramble[i-1]
  }else{
    pressure_project_massaged$Scramble_1[i]<- 0
  }
}


pressure_project_massaged$Scramble_2<- 0
for(i in 3:(length(pressure_project_massaged$R))) {
  if(pressure_project_massaged$OFFENSE[i] == pressure_project_massaged$OFFENSE[i-2]){
    pressure_project_massaged$Scramble_2[i]<- pressure_project_massaged$Scramble[i-2]
  }else{
    pressure_project_massaged$Scramble_2[i]<- 0
  }
}


pressure_project_massaged$Scramble_3<- 0
for(i in 4:(length(pressure_project_massaged$R))) {
  if(pressure_project_massaged$OFFENSE[i] == pressure_project_massaged$OFFENSE[i-3]){
    pressure_project_massaged$Scramble_3[i]<- pressure_project_massaged$Scramble[i-3]
  }else{
    pressure_project_massaged$Scramble_3[i]<- 0
  }
}



pressure_project_massaged$Hit_1<- 0
for(i in 2:(length(pressure_project_massaged$R))) {
  if(pressure_project_massaged$OFFENSE[i] == pressure_project_massaged$OFFENSE[i-1]){
    pressure_project_massaged$Hit_1[i]<- pressure_project_massaged$Hit[i-1]
  }else{
    pressure_project_massaged$Hit_1[i]<- 0
  }
}

pressure_project_massaged$Hit_2<- 0
for(i in 3:(length(pressure_project_massaged$R))) {
  if(pressure_project_massaged$OFFENSE[i] == pressure_project_massaged$OFFENSE[i-2]){
    pressure_project_massaged$Hit_2[i]<- pressure_project_massaged$Hit[i-2]
  }else{
    pressure_project_massaged$Hit_2[i]<- 0
  }
}

pressure_project_massaged$Hit_3<- 0
for(i in 4:(length(pressure_project_massaged$R))) {
  if(pressure_project_massaged$OFFENSE[i] == pressure_project_massaged$OFFENSE[i-3]){
    pressure_project_massaged$Hit_3[i]<- pressure_project_massaged$Hit[i-3]
  }else{
    pressure_project_massaged$Hit_3[i]<- 0
  }
}



sum(pressure_project_massaged$Coverage)
pressure_project_massaged$PP<- ifelse(pressure_project_massaged$Coverage==1, 0, pressure_project_massaged$PP)



sum(pressure_project_massaged$PP)
table(pressure_project_massaged$PLTYPE)
table(pressure_project_massaged$QBRs)
sum(pressure_project_massaged$Coverage)
sum(pressure_project_massaged$PP)/length(pressure_project_massaged$R)


pressure_project_massaged$O<- paste(pressure_project_massaged$OFFENSE, pressure_project_massaged$YEAR, sep="-")
pressure_project_massaged$D<- paste(pressure_project_massaged$DEFENSE, pressure_project_massaged$YEAR, sep="-")

pressure_project_massaged$HOME<- ifelse(pressure_project_massaged$HOME=='JAC', 'JAX', pressure_project_massaged$HOME)
pressure_project_massaged$AWAY<- ifelse(pressure_project_massaged$AWAY=='JAC', 'JAX', pressure_project_massaged$AWAY)


colnames(pressure_project_massaged)
sum(pressure_project_massaged$Boot)
sum(pressure_project_massaged$Shotgun)
sum(pressure_project_massaged$NoHuddle)
sum(pressure_project_massaged$Hit)
colnames(pressure_project_massaged)

pressure_project_massaged<- pressure_project_massaged[order(pressure_project_massaged$R),]

write.csv(pressure_project_massaged, '~/pressure_project.csv')
