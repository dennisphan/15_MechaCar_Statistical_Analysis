demo_table <- read.csv(file='demo.csv', check.names=F, stringsAsFactors = F)

library(jsonlite)

demo_table2 <- fromJSON(txt='demo.json')

x <- c(3,3,2,2,5,5,8,8,9)
x[3]
