# Load data
source("./loadData.R")

# Initial PNG file
png(filename = "plot1.png", bg=NA)

# Create plot
hist(dt$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

# Close file
dev.off()
