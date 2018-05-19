png("plot1.png")

hist(finaldb$Global_active_power, col="red", main = "Global active power",
     xlab = "Global active power (kilowatts)",
     ylab = "frequency")

dev.off()