#SPSS Mean.N Funktion
#http://r4stats.com/2014/09/03/adding-the-spss-mean-n-function-to-r/
#September 3, 2014 by Bob Muenchen

mean.n   <- function(df, n) {
  means <- apply(as.matrix(df), 1, mean, na.rm = TRUE)
  nvalid <- apply(as.matrix(df), 1, function(df) sum(!is.na(df)))
  ifelse(nvalid >= n, means, NA)
}

mean(df[,1],3)