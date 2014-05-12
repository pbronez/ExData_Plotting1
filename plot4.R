# plot4.R

# load the data via boilerplate code
source("read_data.R")

# 4-Way Line Graph
png(file="plot4.png")

# Canvass configuration
par(mfrow = c(2,2))

# Plot 4a
plot(data$datetime, data$Global_active_power, type="line",
     ylab="Global Active Power", xlab="")

# Plot 4b
plot(data$datetime, data$Voltage, type="line", col="black",
     ylab="Voltage", xlab="datetime")

# Plot 4c
plot(data$datetime, data$Sub_metering_1, type="line", col="black",
     ylab="Energy sub metering", xlab="")
lines(data$datetime, data$Sub_metering_2, type="line", col="red")
lines(data$datetime, data$Sub_metering_3, type="line", col="blue")
legend("topright", col=c("Black","Red","Blue"), lty = 1, bty="n",
       legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Plot 4d
plot(data$datetime, data$Global_reactive_power, type="line",
     ylab="Global_reactive_power", xlab="datetime")
dev.off()
