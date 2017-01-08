Data <- read.table("household_power_consumption.txt", header=TRUE,sep=";",na.strings = "?")
subsetdata2 <- subset(Data, Data$Date == "1/2/2007" | Data$Date == "2/2/2007")
DataDateTime <- strptime(paste(subsetdata2$Date, subsetdata2$Time), "%d/%m/%Y %H:%M:%S") 
Metering_1 <- as.numeric(subsetdata2$Sub_metering_1)
Metering_2 <- as.numeric(subsetdata2$Sub_metering_2)
Metering_3 <- as.numeric(subsetdata2$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(DataDateTime, Metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(DataDateTime, Metering_2, type="l", col="red")
lines(DataDateTime, Metering_3, type="l", col="blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()