# plot2.R

# load the data via boilerplate code
source("read_data.R")

# Global Active Power Over Time
png(file="plot2.png")
plot(data$datetime, data$Global_active_power, type="line",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
