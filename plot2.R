data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
inputData <- subset(data, as.Date(Date,"%d/%m/%Y") == as.Date("01/02/2007", "%d/%m/%Y") 
                    | as.Date(Date,"%d/%m/%Y") == as.Date("02/02/2007", "%d/%m/%Y"))
plot(as.numeric(as.character(inputData$Global_active_power)), type = "l", 
     ylab = "Global Active Power (kilowatts)", xaxt = "n", xlab = "")
axis(1, at=c(0,1440,2880), labels=c("Thu","Fri","Sat"))

dev.copy(png, file ="plot2.png")
dev.off()
