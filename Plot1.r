
Data <- read.table("household_power_consumption.txt", header=TRUE,sep=";",na.strings = "?")
subsetdata2 <- subset(Data, Data$Date == "1/2/2007" | Data$Date == "2/2/2007")
GlobalActivePower <- as.numeric(subsetdata$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GlobalActivePower, col="red", main = "Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()