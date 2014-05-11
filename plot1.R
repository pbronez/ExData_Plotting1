# plot1.R

# load the data via boilerplate code
source("read_data.R")

# Global Active Power Histogram
png(file="plot1.png")
hist(data$Global_active_power, col="red", main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()