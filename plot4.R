#run plot1.R first

par(mfrow=c(2,2))
#top left graph
plot(date_time2_subset,Global_active_power, type="n", ylab="Global Active Power",
     xlab="")
lines(date_time2_subset,Global_active_power)
#top right graph
plot(date_time2_subset,Voltage, type="n", ylab="Voltage",
     xlab="")
lines(date_time2_subset,Voltage)
#bottom left graph
plot(date_time2_subset,Sub_metering_1, type="n", ylab="Energy sub metering",
     xlab="")
lines(date_time2_subset,Sub_metering_1)
lines(date_time2_subset,Sub_metering_2, col="red")
lines(date_time2_subset,Sub_metering_3, col="blue")
legend("topright", col = c("black","blue", "red"), legend = 
           c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lwd=2, cex=0.75)
#bottom right graph
plot(date_time2_subset,Global_reactive_power, type="n", ylab="Global_reactive_power",
     xlab="")
lines(date_time2_subset,Global_reactive_power)

