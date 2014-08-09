# load data, transform string representation of date to datetime, and filter only date for 2007-02-01 and 2007-02-02
source ("load_data.R")

# open bitmap file device
png(filename="plot4.png",width=480, height=480)

par(mfrow=c(2,2))

# firts plot
with(subset, plot(DateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power") )

# second plot
with(subset, plot(DateTime, Voltage, type="l", xlab="datetime", ylab="Voltage") )

# third plot

with(subset, plot  (DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering") )
with(subset, points(DateTime, Sub_metering_2, type="l", col="Red") )
with(subset, points(DateTime, Sub_metering_3, type="l", col="Blue") )
legend( "topright", col =  c("Black","Red","Blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), pch=c(NA,NA,NA),lwd=1, lty=c(1,1,1))

# forth plot
with(subset, plot(DateTime, Global_reactive_power, type="l", xlab="datetime") )

# save to file
dev.off()
