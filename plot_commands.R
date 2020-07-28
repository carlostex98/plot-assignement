##data loading
data_x <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, colClasses = "character")

##using the desired dates
cc <- data_x[data_x$Date >= '2007-02-01'&data_x$Date <= '2007-02-02',]
##if you want, you cant clean the big data set by using: 
rm(data_x)
##-----


