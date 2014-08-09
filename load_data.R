# check if we already have downladed the source file
if (!file.exists("data/household_power_consumption.txt")) {
    
    if(!file.exists("data")) {dir.create("data")}
    
    download.file(url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                  destfile="data/household_power_consumption.zip", method="curl")
    unzip("data/household_power_consumption.zip",exdir="data")               
}

# have to set locale to US in order to get english labels for x axis
Sys.setlocale("LC_TIME", "en_US.UTF-8") 

# read data from downloaded file
data <- read.csv(file="data/household_power_consumption.txt",sep=";",header=T, na.strings="?")

# convert Date column to Date datatype
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# filer only specified time period
subset <- data[data$Date %in% as.Date(c("2007-02-01","2007-02-02")) ,]

# free up memory
rm(data)

# combine date and time
subset$DateTime <- strptime( paste(subset$Date, subset$Time, sep=" "), format="%Y-%m-%d  %H:%M:%S")


