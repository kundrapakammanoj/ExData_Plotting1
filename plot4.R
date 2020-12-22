
library(sqldf)
powerConsumption<-read.csv.sql("./household_power_consumption.txt","select * from file where Date= '1/2/2007' or Date = '2/2/2007'",sep=";")


powerConsumption$dateTime<-as.POSIXct(strptime(paste(powerConsumption$Date,powerConsumption$Time,sep =" "), "%d/%m/%Y %H:%M:%S"))

par(mfrow=c(2,2),mar=c(4,4,2,1), oma=c(0,0,2,0))

plot(powerConsumption$dateTime,powerConsumption$Global_active_power,type="l",xlab =" ",ylab = "Global Active Power (kilowatts)")
plot(powerConsumption$dateTime,powerConsumption$Voltage,type="l",xlab ="datetime",ylab = "Voltage")
plot(powerConsumption$Sub_metering_1~powerConsumption$dateTime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
lines(powerConsumption$Sub_metering_2~powerConsumption$dateTime,col='Red')
lines(powerConsumption$Sub_metering_3~powerConsumption$dateTime,col='Blue')

plot(powerConsumption$dateTime,powerConsumption$Global_reactive_power,type="l",xlab ="datetime",ylab = "Global_reactive_power")

