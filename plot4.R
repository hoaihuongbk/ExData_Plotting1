# Load data
source("./loadData.R")

# Initial PNG file
png(filename = "plot4.png", bg=NA)

# Create layout 2 rows, 2 columns
par(mfrow=c(2,2), mar=c(4,4,4,4))

# Create plot
plot(Global_active_power ~ DateTime, data=dt, type="l", xlab="", ylab="Global Active Power")
plot(Voltage ~ DateTime, data=dt, type="l", xlab="", ylab="Voltage")
plot(Sub_metering_1 ~ DateTime, data=dt, type="l", xlab="", ylab="Energy sub metering")
lines(Sub_metering_2 ~ DateTime, data=dt, type="l", col="red")
lines(Sub_metering_3 ~ DateTime, data=dt, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, bty="n")
plot(Global_reactive_power ~ DateTime, data=dt, type="l", xlab="", ylab="Global reactive power")

# Close file
dev.off()
