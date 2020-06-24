## Program to plot Global Active Power across Time

plot2 <- function() {
        # Loading the data
        source('preprocess.R')
        data <- preprocess()
        
        # Plotting the plot
        png(file = 'plot2.png',width = 480,height = 480)
        with(data,plot(Time, Global_active_power, xlab = '',
                       ylab = 'Global Active Power (kilowatts)',type='l'))
        dev.off()   
        
}


