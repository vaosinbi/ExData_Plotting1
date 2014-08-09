# load data, transform string representation of date to datetime, and filter only date for 2007-02-01 and 2007-02-02
# subset variable contains only active data
source ("load_data.R")

# open bitmap file device
png(filename="plot1.png",width=480, height=480)

# create histogram
with(subset, hist(Global_active_power,col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") )

# save the histogram to file
dev.off()





