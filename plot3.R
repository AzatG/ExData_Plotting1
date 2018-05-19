png("plot3.png")
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

dev.off()

