pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  Sulfate <- numeric()
  Nitrate <- numeric()
  final_dest<-paste(c("D:/BTP/Data_Science_Spltrak/Course_Second_R_Programming/working_directory"),directory,sep="/")
  setwd(final_dest)
  file_data<-dir()
  for(i in id){
     data<-read.csv(file_data[i])
     
     Nitrate <- c(Nitrate,data$nitrate)
     Sulfate<- c(Sulfate, data$sulfate)
     
  }
  if (pollutant== "sulfate"){
    print(mean(Sulfate,na.rm=TRUE))
  }
  else if(pollutant== "nitrate"){
    print(mean(Nitrate,na.rm=TRUE))
  }
  else{
    print("Null")
  }

}