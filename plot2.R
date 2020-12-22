
library(sqldf)
powerConsumption<-read.csv.sql("H:/ManojK/Data Science Training/exdata_data_household_power_consumption/household_power_consumption.txt","select * from file where Date= '1/2/2007' or Date = '2/2/2007'",sep=";")


powerConsumption$dateTime<-strptime(paste(powerConsumption$Date,powerConsumption$Time,sep =" "), "%d/%m/%Y %H:%M:%S")

plot(powerConsumption$dateTime,powerConsumption$Global_active_power,type="l",xlab =" ",ylab = "Global Active Power (kilowatts)")