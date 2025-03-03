data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
inputData <- subset(data, as.Date(Date,"%d/%m/%Y") == as.Date("01/02/2007", "%d/%m/%Y") 
                    | as.Date(Date,"%d/%m/%Y") == as.Date("02/02/2007", "%d/%m/%Y"))
plot(as.numeric(as.character(inputData$Sub_metering_1)), ylab = "Energy sub metering", xaxt = "n", type = "n", xlab = "")
lines(as.numeric(as.character(inputData$Sub_metering_1)))
lines(as.numeric(as.character(inputData$Sub_metering_2)), col = "red")
lines(as.numeric(as.character(inputData$Sub_metering_3)), col = "blue")
axis(1, at=c(0,1440,2880), labels=c("Thu","Fri","Sat"))
legend("topright", legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), 
       col = c("black","red","blue"), lty = 1)
dev.copy(png, file ="plot3.png")
dev.off()
