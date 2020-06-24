## Program to plot the four given plots

plot4 <- function() {
        # Loading the data, setting mfrow to c(2,2)
        source('preprocess.R')
        data <- preprocess()
        par(mfrow = c(2,2),mar = c(3,4,2,1),oma = c(0,0,2,0))
        
        # Plotting the plot
        #png(file = 'plot4.png',width = 480,height = 480)
        
        #First plot
        with(data,plot(Time, Global_active_power, xlab = '',
                       ylab = 'Global Active Power (kilowatts)',type='l'))
        
        #Second plot
        with(data,plot(Time, Voltage, xlab = 'datetime',type='l'))
        
        #Third plot, identical code as in plot3.R
        #Initiating empty plot
        with(data,plot(Time, Sub_metering_1,type='n', xlab = '',
                                ylab = 'Energy sub meterings'))
        # Plotting three separate subplots
        with(data,points(Time, Sub_metering_1, type='l'))
        with(data,points(Time, Sub_metering_2, type='l',col='red'))
        with(data,points(Time, Sub_metering_3, type='l',col='blue'))
        # Adding legend, slight changes to plot3, since there were problems 
        # with box and text sizes
        legend(x= "topright",col = c('black','red','blue'),
               legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
               bty = 'n', lwd=1,y.intersp = 0.5, cex=0.9, )
        
        # Fourth plot
        with(data,plot(Time, Global_reactive_power, xlab = 'datetime',type='l'))
        
        # Copying and saving
        dev.copy(png,file = 'plot4.png',width = 480,height = 480)
        dev.off()   
        
}


