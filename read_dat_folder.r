data_list <- list.files(path = ".")
data_list <-grep(".dat", data_list, value = TRUE)
data_list


read.dat.folder <- function(file.names, ...) {
  require(plyr)
  ldply(file.names, function(fn) data.frame(Seminar=fn, 
                                            read.table(fn, sep=",", header=FALSE)))
}


data_in_folder <- read.dat.folder(data_list)
