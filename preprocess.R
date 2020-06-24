## Subprogram that reads the given dataset, converts dates and times and 
## furthermore restricts to dates 2007-02-01 and 2007-02-02
# Loading the data
preprocess <- function(){
        data <- read.table('household_power_consumption.txt',
                           header=TRUE,sep=';',na.strings='?')
        
        # Converting do Date and Time
        Time <- strptime(paste(data[,'Date'],data[,'Time'],sep=' '),
                         format = '%d/%m/%Y %H:%M:%S')
        data[,'Date'] <- as.Date(data[,'Date'],format = '%d/%m/%Y')
        data <- cbind(Time,data[,-2])
        
        # Restricting to required dates
        dates <- as.Date(c('2007-02-01','2007-02-02'),format = '%Y-%m-%d')
        data <- data[data[,'Date'] %in% dates,]
        data
}
