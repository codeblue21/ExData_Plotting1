##first set wd
setwd("C:\Users\David\datasciencecoursera\ExData_Plotting1")

dt=read.csv('household_power_consumption.txt',header=T, sep=';') ##read csv file as a textfile
dt$Datetime = paste(as.character(dt[,1]) , dt[,2])  ##merge time and date into a one column 
dt[,1]=as.Date(dt$Date,'%d/%m/%Y') ##convert Date column from string to date 
dt = subset(dt, Date == '2007-02-01' | Date == '2007-02-02') ##specify by date (two days)
dt[,3] = as.numeric(as.character(dt[,3])) ##convert Global Active Power datatype to numbers from text

##plot1
png('plot1.png',width=480,height=480)
hist(dt[,3],col='red',xlab='Global Active Power (kilowatts)', ylab='Frequency',main='Global Active Power')
dev.off()
