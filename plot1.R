##read the data
data <- read.table("household_power_consumption.txt" ,header=TRUE , sep=";", stringsAsFactors=FALSE, dec=".")

##subsetting the data on date 

subsetTheData = data[data$Date %in% ("1/2/2007","2/2/2007") ,]

##open the png device

plot("plot1.png" ,width=480, height=480)

hist(as.numeric(subsetTheData$globalActivePower) ,  col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()