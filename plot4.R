png("plot4.png")
par(mfrow=c(2,2))
plot(finaldb$Time, finaldb$Global_active_power,
     ylab = "Global active Power(kilowatts)",
     xlab = " ",
     type = "l")

plot(finaldb$Time, finaldb$Voltage,
     ylab = "Voltage",
     xlab = "datetime",
     type = "l")

plot(finaldb$Time, finaldb$Sub_metering_1,
     xlab = " ",
     ylab = "Energy sub metering",
     # col=,
     type="l")

lines(finaldb$Time, finaldb$Sub_metering_2, col = "blue")
lines(finaldb$Time, finaldb$Sub_metering_3, col = "red")
legend("topright", legend = c(
  "Sub metering 1", "Sub metering 2", "Sub metering 3"),
  col = c("black", "blue", "red"),
  lty = "solid")

plot(finaldb$Time,finaldb$Global_reactive_power,
     xlab = "datetime",
     ylab = "Global_reactive_power",
     type = "l")
dev.off()
