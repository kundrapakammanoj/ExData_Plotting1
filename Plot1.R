
library(sqldf)
powerConsumption<-read.csv.sql("./household_power_consumption.txt","select * from file where Date= '1/2/2007' or Date = '2/2/2007'",sep=";")

hist(powerConsumption$Global_active_power,xlab = "Global Active Power (kilowatts)",main = "Global Active Power",col = "RED")

