plot3<-function(){
    myfile="household_power_consumption.txt"
    wholedata<-read.table(myfile,header=TRUE,sep=";",colClass="character")
    usedata<-wholedata[wholedata$Date=="1/2/2007"|wholedata$Date=="2/2/2007",]
    
    temp<-paste(usedata$Date, usedata$Time)
    realtime<-strptime(temp,"%d/%m/%Y %H:%M:%S")
    
    png(filename = "plot3.png",width = 480, height = 480, units = "px",bg = "transparent")
    plot(realtime,as.numeric(usedata$Sub_metering_1),xlab=NA,ylab="Energy sub metering",type="l",col="black")
    points(realtime,as.numeric(usedata$Sub_metering_2),xlab=NA,ylab="Energy sub metering",type="l",col="red")
    points(realtime,as.numeric(usedata$Sub_metering_3),xlab=NA,ylab="Energy sub metering",type="l",col="blue")
    legend("topright", lwd=1,col = c("black","blue", "red"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    dev.off()
}