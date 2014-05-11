# read_data.R
# boilerplate code to load the data

# Load data from disk
data <- read.table("household_power_consumption.txt", header = TRUE, sep=";",
                    na.strings="?", colClasses=c("character", "character", "numeric",
                    "numeric","numeric","numeric","numeric","numeric","numeric"))

# Extract time information
data$datetime <- paste(data$Date, data$Time)
data$datetime <- strptime(data$datetime, format="%d/%m/%Y %T")

# Isolate the time period of interest
data <- subset(data, datetime >= as.POSIXlt("2007-02-01", format="%Y-%m-%d") & 
                   datetime < as.POSIXlt("2007-02-03", format="%Y-%m-%d"))
