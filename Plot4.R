## URL location of data
fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
## Downloading data file
download.file(fileURL, "household_power_consumption.zip")
unzip("household_power_consumption.zip", "household_power_consumption.txt")
## Deleting zip file to free up disk space
unlink("household_power_consumption.zip")
## Reading the data
fullData <- read.table("household_power_consumption.txt", header = TRUE, 
                       sep = ";", dec = ".")
## Selecting the dates object of the study
plottingData <- fullData[(fullData$Date == "1/2/2007" | fullData$Date == "2/2/2007"),]
## Removing full data set to free up memory space
rm(fullData)
## Deleting txt file to free up disk space
unlink("household_power_consumption.txt")

## Tidying up the data - adjusting classes to the correct ones
## Unifying Date and Time as one variable of appropriate class in Time column
plottingData$Time <- as.POSIXct(strptime(paste(plottingData$Date, plottingData$Time), 
                                           "%d/%m/%Y %H:%M:%S"))
## Removing Date column
plottingData <- plottingData[, -1]
## Converting measured variables to numeric type
plottingData$Global_active_power <- as.numeric(plottingData$Global_active_power)
plottingData$Global_reactive_power <- as.numeric(plottingData$Global_reactive_power)
plottingData$Voltage <- as.numeric(plottingData$Voltage)
plottingData$Global_intensity <- as.numeric(plottingData$Global_intensity)
plottingData$Sub_metering_1 <- as.numeric(plottingData$Sub_metering_1)
plottingData$Sub_metering_2 <- as.numeric(plottingData$Sub_metering_2)
plottingData$Sub_metering_3 <- as.numeric(plottingData$Sub_metering_3)
## Checking the data structure
str(plottingData)

## The actual plots
## Opening the device
png("plot4.png", width = 480, height = 480)
## Adjusting the printing area and fill-up sequence
par(mfcol = c(2,2))
## First plot
plot(plottingData$Time, plottingData$Global_active_power,
     type = "l", xlab = "", ylab = "Global Active Power")
## Second plot
plot(plottingData$Time, plottingData$Sub_metering_1,
     type = "l", xlab = "", ylab = "Energy sub metering")
## Adding the other series
lines(plottingData$Time, plottingData$Sub_metering_2, col = "red")
lines(plottingData$Time, plottingData$Sub_metering_3, col = "blue")
## Adding the legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = c(1, 1, 1))
## Third plot
plot(plottingData$Time, plottingData$Voltage,
     type = "l", xlab = "datetime",ylab = "Voltage")
## Fourth plot
plot(plottingData$Time, plottingData$Global_reactive_power,
     type = "l", xlab = "datetime", ylab = "Global_reactive_power")
## Closing up the device
dev.off()
