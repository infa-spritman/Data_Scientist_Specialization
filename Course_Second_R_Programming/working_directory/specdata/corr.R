corr <- function(directory, threshold=0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
  #id_data <- numeric()
  corr_data <- numeric()
  final_dest<-paste(c("D:/BTP/Data_Science_Spltrak/Course_Second_R_Programming/working_directory"),directory,sep="/")
  setwd(final_dest)
  file_data<-dir()
  for(i in 1:332){
    data<-read.csv(file_data[i])
    data<-na.omit(data)
    new_nob<-dim(data)[1]
    if(new_nob>threshold){
      var<-cor(data$sulfate,data$nitrate)
    }
   corr_data<-c(corr_data,var)
    
  }
  
  corr_data
}