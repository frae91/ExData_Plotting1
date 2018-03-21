# Subsetting power consumption data
power <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(power) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering1", "Sub_metering2", "Sub_metering3")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date=="2/2/2007")

# Plot function
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")

# Annotating graph
title(main="Global Active Power")