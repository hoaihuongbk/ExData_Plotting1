# Load data
source("./loadData.R")

# Initial PNG file
png(filename = "plot3.png", bg=NA)

# Create plot
plot(Sub_metering_1 ~ DateTime, data=dt, type="l", xlab="", ylab="Energy sub metering")
lines(Sub_metering_2 ~ DateTime, data=dt, type="l", col="red")
lines(Sub_metering_3 ~ DateTime, data=dt, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)

# Close file
dev.off()
