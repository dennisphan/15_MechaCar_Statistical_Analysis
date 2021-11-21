# import library
library(dplyr)


#demo_table <- read.csv(file='demo.csv', check.names=F, stringsAsFactors = F)
mpg_data <- read.csv(file='Resources/MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)


lmResult = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =mpg_data)
summary(lmResult)

coil_Data <- read.csv('Resources/Suspension_Coil.csv')

total_summary <- coil_Data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Standard_dev=sd(PSI))
total_summary

lot_summary <- coil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Standard_dev=sd(PSI), .groups='keep')
lot_summary
