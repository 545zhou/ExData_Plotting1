plot2<-function(){
    myfile="household_power_consumption.txt"
    wholedata<-read.table(myfile,header=TRUE,sep=";",colClass="character")
    usedata<-wholedata[wholedata$Date=="1/2/2007"|wholedata$Date=="2/2/2007",]
    
    temp<-paste(usedata$Date, usedata$Time)
    realtime<-strptime(temp,"%d/%m/%Y %H:%M:%S")
    
    png(filename = "plot2.png",width = 480, height = 480, units = "px",bg = "transparent")
    plot(realtime,as.numeric(usedata$Global_active_power),xlab=NA,ylab="Global Active Power (kilowatts)",type="l")
    dev.off()
}