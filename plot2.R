# load data, transform string representation of date to datetime, and filter only date for 2007-02-01 and 2007-02-02
source ("load_data.R")

# open bitmap file device
png(filename="plot2.png",width=480, height=480)

with(subset, plot(DateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)") )

# save the histogram to file
dev.off()
