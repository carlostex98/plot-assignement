##data loading
data_x <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, colClasses = "character")

##using the desired dates

cc <- data_x[data_x$Date >= '2007-02-01'&data_x$Date <= '2007-02-02',]
cc[,1] <- as.Date(cc[,1], "%m/%d/%Y")

cc[,3] <- as.numeric(cc[,3])
hist(cc$Global_active_power, xlab = "Global active power (kilowatts)", main = "Global active power")


rm(list = ls())


##second plot
cc2 <- data_x[data_x$Date >= '2007-02-01'&data_x$Date <= '2007-02-02',]
plot( as.POSIXct(paste(cc2$Date, cc2$Time), 
      format="%Y-%m-%d %H:%M:%S"), 
      cc2$Global_active_power, 
      type = "l",
      xlab = "",
      ylab = "Global active power (kilowatts)" )


##third plot

cc3 <- data_x[data_x$Date >= '2007-02-01'&data_x$Date <= '2007-02-02',]
cc3[,7] <- as.numeric(cc3[,7])
cc3[,8] <- as.numeric(cc3[,8])
cc3[,9] <- as.numeric(cc3[,9])


plot(as.POSIXct(paste(cc2$Date, cc2$Time),format="%Y-%m-%d %H:%M:%S"), cc3$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering" )
lines(as.POSIXct(paste(cc2$Date, cc2$Time),format="%Y-%m-%d %H:%M:%S"), cc3$Sub_metering_2, col="red")
lines(as.POSIXct(paste(cc2$Date, cc2$Time),format="%Y-%m-%d %H:%M:%S"), cc3$Sub_metering_3, col="blue")
legend("topright", pch = "-", col = c("black","blue", "red"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))


##fourth plot

cx <- data_x[data_x$Date >= '2007-02-01'&data_x$Date <= '2007-02-02',]
cx[,1] <- as.Date(cc[,1], "%m/%d/%Y")
cx[,3] <- as.numeric(cx[,3])
cx[,7] <- as.numeric(cx[,7])
cx[,8] <- as.numeric(cx[,8])
cx[,9] <- as.numeric(cx[,9])

par(mfrow=c(2,2))

plot(as.POSIXct(paste(cx$Date, cx$Time),format="%Y-%m-%d %H:%M:%S"), 
     cx$Global_active_power, type = "l", xlab = "", ylab = "Global active power" )

plot(as.POSIXct(paste(cx$Date, cx$Time),format="%Y-%m-%d %H:%M:%S"), 
     cx$Voltage, type = "l", xlab = "", ylab = "Voltage" )

plot(as.POSIXct(paste(cx$Date, cx$Time),format="%Y-%m-%d %H:%M:%S"), cx$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering" )
lines(as.POSIXct(paste(cx$Date, cx$Time),format="%Y-%m-%d %H:%M:%S"), cx$Sub_metering_2, col="red")
lines(as.POSIXct(paste(cx$Date, cx$Time),format="%Y-%m-%d %H:%M:%S"), cx$Sub_metering_3, col="blue")
legend("topright", pch = "-", col = c("black","blue", "red"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

plot(as.POSIXct(paste(cx$Date, cx$Time),format="%Y-%m-%d %H:%M:%S"), 
     cx$Global_reactive_power, type = "l", xlab = "", ylab = "Global_reactive_power" )




