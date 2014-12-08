data <- read.csv("exdata-016//data//household_power_consumption.txt",header = TRUE, sep = ";")

data$Date_Time = strptime(paste(data$Date, data$Time),"%d/%m/%Y %H:%M:%S")

data$Date <- as.Date(data$Date, format="%d/%m/%Y")

## Subsetting 
data_subset <- subset(data, subset=(data$Date >= "2007-02-01" & data$Date <= "2007-02-02"))
#View(head(data))

png("exdata-016/plot3.png", height=480, width=480)

plot(data_subset$Date_Time, data_subset$Sub_metering_1, pch=NA, xlab="", ylab="Global Active Power (kilowatts)")
lines(data_subset$Date_Time, data_subset$Sub_metering_1)
lines(data_subset$Date_Time, data_subset$Sub_metering_2)
lines(data_subset$Date_Time, data_subset$Sub_metering_3)

dev.off()


