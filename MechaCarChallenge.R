#Deliverable 1
library(tidyverse)
mechaCar <- read.csv(file='MechaCar_mpg.csv')
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mechaCar) #Create linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mechaCar))
model<-lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mechaCar)
#Deliverable 2
suspension_table<-read.csv('Suspension_Coil.csv', check.names = F,stringsAsFactors = F)
library(dplyr)
total_summary<-suspension_table%>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups='keep')
total_summary
lot_summary<-suspension_table%>%group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups='keep')
lot_summary
#Deliverable 3
#T-Test on suspension coil
t.test(suspension_table$PSI,mu=1500)
#T-test on manufacturing Lot 1 
lot1<- suspension_table %>% filter(Manufacturing_Lot=='Lot1')
t.test(lot1$PSI,mu=1500)
#Manufacturing Lot 2
lot2<- suspension_table %>% filter(Manufacturing_Lot=='Lot2')
t.test(lot2$PSI,mu=1500)
#Manufacturing Lot-3
lot3<- suspension_table %>% filter(Manufacturing_Lot=='Lot3')
t.test(lot3$PSI,mu=1500)