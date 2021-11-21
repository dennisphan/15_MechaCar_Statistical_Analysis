# import library
library(dplyr)


#demo_table <- read.csv(file='demo.csv', check.names=F, stringsAsFactors = F)
mpg_data <- read.csv(file='Resources/MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)


lmResult = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =mpg_data)
summary(lmResult)


