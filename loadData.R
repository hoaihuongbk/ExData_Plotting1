# Import library
library(data.table)
library(lubridate)

# Global settings
Sys.setlocale(category = 'LC_ALL','en_US.UTF-8')

# Load data from source, unzip to data table
dt <- fread("curl https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip | funzip") 

# Pre-processing data
dt$DateTime <- dmy_hms(paste(dt$Date, dt$Time))
fromTime <- dmy_hms('01/02/2007 00:00:00')
toTime <- dmy_hms('02/02/2007 23:59:59')
dt <- dt[DateTime >= fromTime & DateTime <= toTime]
dt$Global_active_power <- as.numeric(dt$Global_active_power)
dt$Global_reactive_power <- as.numeric(dt$Global_reactive_power)