library(data.table)

##################

db <- read.table("edu/Exploratory data analysis/household_power_consumption.txt",
                 header = TRUE, sep =";")
db <- setDT(db)

finaldb <- db[db$Date %in% c("1/2/2007","2/2/2007"),]
Time <-  strptime(paste(finaldb$Date, finaldb$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
finaldb <- cbind(Time, finaldb)
finaldb$Global_active_power <-  as.character(finaldb$Global_active_power)
finaldb$Global_active_power <- as.numeric(finaldb$Global_active_power)





