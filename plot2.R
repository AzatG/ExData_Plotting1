png("plot2.png")
plot(finaldb$Time, finaldb$Global_active_power,
     ylab = "Global active Power(kilowatts)",
     xlab = "  ",
     type = "l")
dev.off()
