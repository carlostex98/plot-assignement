##data loading
data_x <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, colClasses = "character")

##using the desired dates
cc[,1] <- as.Date(cc[,1], "%m/%d/%Y")
cc <- data_x[data_x$Date >= '2007-02-01'&data_x$Date <= '2007-02-02',]
##if you want, you cant clean the big data set by using: 
rm(data_x)
##-----

cc[,3] <- as.numeric(cc[,3])
hist(cc$Global_active_power, xlab = "Global active power (kilowatts)", main = "Global active power")





##second plot
cc2 <- data_x[data_x$Date >= '2007-02-01'&data_x$Date <= '2007-02-02',]
plot( as.POSIXct(paste(cc2$Date, cc2$Time), 
      format="%Y-%m-%d %H:%M:%S"), 
      cc2$Global_active_power, 
      type = "l",
      xlab = "",
      ylab = "Global active power (kilowatts)" )




