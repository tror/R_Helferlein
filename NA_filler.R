
to_fill_var <- c(4,NA,2,4)
fill_var  <- c(1,2,NA,NA)

df<- data.frame(to_fill_var, fill_var)

df$to_fill_var[is.na(df$to_fill_var)] <- df$fill_var[is.na(df$to_fill_var)]

df$to_fill_var
