data <- read.csv("exdata-016//data//household_power_consumption.txt",header = TRUE, sep = ";")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")


## Subsetting 
data_sebset <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
#View(head(data))


d <- data_sebset["Global_active_power"]

d1<- as.numeric(as.character(d$Global_active_power))
d1<- d1*2

hist(d1, col='red', xlab = 'Global Active Power (kilowatts)', main = 'Global Active Power')




