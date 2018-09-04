#setting working directory
setwd("C:/Users/andre/Documents/GitHub/ExData_Plotting1")

#reading and summarising
classes <- rep("character",9)
data <- read.table("household_power_consumption.txt", sep=";", head=TRUE,
                   colClasses=classes)
str(data)

#converting to proper classes
data$Date <- as.Date(data$Date, "%d/%m/20%y")
data$Global_active_power <- as.numeric(data$Global_active_power)
data$Global_reactive_power <- as.numeric(data$Global_reactive_power)
data$Voltage <- as.numeric(data$Voltage)
data$Global_intensity <- as.numeric(data$Global_intensity)
data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)
data$Sub_metering_3 <- as.numeric(data$Sub_metering_3)

date_time <- paste(data$Date, data[,2], sep = " ")
date_time2 <- strptime(date_time,"%Y-%m-%d %H:%M:%S")
str(data)

#subsetting the dates
data_date_subset_index <- (data$Date==as.Date("2007-02-01") |
                               data$Date==as.Date("2007-02-02"))

data_date_subset <- data[data_date_subset_index,]
date_time2_subset <- date_time2[data_date_subset_index,]
str(data_date_subset)

attach(data_date_subset)
#creating histogram
par(mfrow=c(1,1))
hist(Global_active_power, col="red", xlab="Global Active Power(kilowatts)")


