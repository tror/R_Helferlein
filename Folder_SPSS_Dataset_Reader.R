#Read all the SAV Files in a Folder

library(haven)

dateilist <- list.files(path = ".")

for(datei in grep(".sav", dateilist, value = TRUE)){
  assign(paste(datei), sjmisc::read_spss(datei))
}