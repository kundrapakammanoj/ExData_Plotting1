
library(sqldf)
powerConsumption<-read.csv.sql("H:/ManojK/Data Science Training/exdata_data_household_power_consumption/household_power_consumption.txt","select * from file where Date= '1/2/2007' or Date = '2/2/2007'",sep=";")

powerConsumption$dateTime<-as.POSIXct(strptime(paste(powerConsumption$Date,powerConsumption$Time,sep =" "), "%d/%m/%Y %H:%M:%S"))


with(powerConsumption, {
  plot(Sub_metering_1~dateTime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~dateTime,col='Red')
  lines(Sub_metering_3~dateTime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))