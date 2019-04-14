# Load data
source("./loadData.R")

# Initial PNG file
png(filename = "plot2.png", bg=NA)

# Create plot
plot(Global_active_power ~ DateTime, data=dt, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# Close file
dev.off()
