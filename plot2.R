#run plot1.R first to import data
png("plot2.png")
par(mfrow=c(1,1))

plot(date_time2_subset,Global_active_power, type="n", ylab="Global Active Power (kilowatts)",
     xlab="")
lines(date_time2_subset,Global_active_power)
dev.off()