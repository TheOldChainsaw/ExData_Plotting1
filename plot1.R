data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
inputData <- subset(data, as.Date(Date,"%d/%m/%Y") == as.Date("01/02/2007", "%d/%m/%Y") 
                    | as.Date(Date,"%d/%m/%Y") == as.Date("02/02/2007", "%d/%m/%Y"))
hist(as.numeric(as.character(inputData$Global_active_power)), xlab = "Global Active Power (kilowatts)", 
     ylab = "Frequency", col = "red", main = "Global Active Power")
dev.copy(png, file ="plot1.png")
dev.off()
