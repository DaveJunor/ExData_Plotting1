########################
# Explorator Data Analysis
# Course Project 01
# Plot01.R
# July 28, 2016
#######################
setwd("C:/Users/Dave/Documents/DataScienceSpecialization/ExploratoryDataAnalysis/Week01/ExData_Plotting1")
rawData <- read.table("./Data/household_power_consumption.txt", sep = ";", na.strings = "?", stringsAsFactors = FALSE, header = TRUE)
datesData <- subset(rawData, Date == "1/2/2007" | Date == "2/2/2007")

hist(plotData$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")
dev.copy(png, file = "plot01.png", width = 480, height = 480)
dev.off(4)
