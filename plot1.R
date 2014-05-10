plot1<-function(){
    myfile="household_power_consumption.txt"
    wholedata<-read.table(myfile,header=TRUE,sep=";",colClass="character")
    usedata<-wholedata[wholedata$Date=="1/2/2007"|wholedata$Date=="2/2/2007",]
    
    png(filename = "plot1.png",width = 480, height = 480, units = "px",bg = "transparent")
    hist(as.numeric(usedata$Global_active_power),xlab="Global Active Power(kilowatts)",col="red",main="Global Active Power")
    dev.off()

}