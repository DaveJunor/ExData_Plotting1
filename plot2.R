########################
# Explorator Data Analysis
# Course Project 01
# plot02.R
# July 28, 2016
#######################
setwd("C:/Users/Dave/Documents/DataScienceSpecialization/ExploratoryDataAnalysis/Week01/ExData_Plotting1")
rawData <- read.table("./Data/household_power_consumption.txt", sep = ";", na.strings = "?", stringsAsFactors = FALSE, header = TRUE)
plotData <- subset(rawData, Date == "1/2/2007" | Date == "2/2/2007")

datetime <- strptime(paste(plotData$Date, plotData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(plotData$Global_active_power)
png("plot02.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()