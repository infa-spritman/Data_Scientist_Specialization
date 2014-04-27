complete <- function(directory, id = 1:332) {
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
  nobs_data <- numeric()
  final_dest<-paste(c("D:/BTP/Data_Science_Spltrak/Course_Second_R_Programming/working_directory"),directory,sep="/")
  setwd(final_dest)
  file_data<-dir()
  for(i in id){
    data<-read.csv(file_data[i])
    data<-na.omit(data)
    new_nob<-dim(data)[1]
    #id_data <- c(id_data,i)
    nobs_data<- c(nobs_data,new_nob)
   # print(nobs_data)
    
  }
 
  data.frame(id=id,nobs=nobs_data)
}