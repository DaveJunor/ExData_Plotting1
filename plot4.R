########################
# Explorator Data Analysis
# Course Project 01
# plot04.R
# July 28, 2016
#######################
setwd("C:/Users/Dave/Documents/DataScienceSpecialization/ExploratoryDataAnalysis/Week01/ExData_Plotting1")
rawData <- read.table("./Data/household_power_consumption.txt", sep = ";", na.strings = "?", stringsAsFactors = FALSE, header = TRUE)
plotData <- subset(rawData, Date == "1/2/2007" | Date == "2/2/2007")

datetime <- strptime(paste(plotData$Date, plotData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot04.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(datetime, plotData$Global_active_power, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(datetime, plotData$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, plotData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(datetime, plotData$Sub_metering_2, type = "l", col = "red")
lines(datetime, plotData$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, lwd = 2.5, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(datetime, plotData$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()