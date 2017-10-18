
duplicate_pair <- function(x, as.bool = FALSE) {
  is.dup <- !(!duplicated(x) & rev(!duplicated(rev(x))))
  if (as.bool) { is.dup } else { x[is.dup] }
}

duplicate_value <- as.data.frame(daten[which(daten$code %in% sort(duplicate_pair(daten$code))),c("Seminar","code")])

duplicate_value <- duplicate_value[order(duplicate_value$code),]  