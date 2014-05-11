# plot3.R

# load the data via boilerplate code
source("read_data.R")

# Energy Submetering Over Time
png(file="plot3.png")
plot(data$datetime, data$Sub_metering_1, type="line", col="black",
     ylab="Energy sub metering", xlab="")
lines(data$datetime, data$Sub_metering_2, type="line", col="red")
lines(data$datetime, data$Sub_metering_3, type="line", col="blue")
legend("topright", col=c("Black","Red","Blue"), lty = 1,
       legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
