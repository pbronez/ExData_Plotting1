# plot1.R

# load the data via boilerplate code
source("read_data.R")

# Global Active Power Histogram
png(file="plot1.png")
<<<<<<< HEAD
hist(data$Global_active_power, col="red", main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
=======
hist(data$Global_active_power)
>>>>>>> bb880a6b7fbe27262407e49aa30d4a8c5b95cd4c
dev.off()