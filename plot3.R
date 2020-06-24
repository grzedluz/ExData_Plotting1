## Program to plot Energy sub metering across Time

plot3 <- function() {
        # Loading the data
        source('preprocess.R')
        data <- preprocess()
        
        # Plotting the plot
        png(file = 'plot3.png',width = 480,height = 480)
        # Initiating  empty plot
        with(data,plot(Time, Sub_metering_1,type='n', xlab = '',
                       ylab = 'Energy sub meterings'))
        
        # Plotting three separate subplots
        with(data,points(Time, Sub_metering_1, type='l'))
        with(data,points(Time, Sub_metering_2, type='l',col='red'))
        with(data,points(Time, Sub_metering_3, type='l',col='blue'))
        
        # Adding legend and saving
        legend('topright',col = c('black','red','blue'),
               legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
               lwd=1)
        dev.off()   
        
}


