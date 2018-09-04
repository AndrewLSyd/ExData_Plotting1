#run plot1.R first to import data
par(mfrow=c(1,1))

plot(date_time2_subset,Sub_metering_1, type="n", ylab="Energy sub metering",
     xlab="")
lines(date_time2_subset,Sub_metering_1)
lines(date_time2_subset,Sub_metering_2, col="red")
lines(date_time2_subset,Sub_metering_3, col="blue")
legend("topright", col = c("black","blue", "red"), legend = 
           c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
        lwd=2, cex=1.2)


