# load data, transform string representation of date to datetime, and filter only date for 2007-02-01 and 2007-02-02
source ("load_data.R")

# open bitmap file device
png(filename="plot3.png",width=480, height=480)

with(subset, plot  (DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering") )
with(subset, points(DateTime, Sub_metering_2, type="l", col="Red") )
with(subset, points(DateTime, Sub_metering_3, type="l", col="Blue") )

# create legend
legend("topright", col =  c("Black","Red","Blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), pch=c(NA,NA,NA),lwd=1, lty=c(1,1,1))

# save the histogram to file
dev.off()
