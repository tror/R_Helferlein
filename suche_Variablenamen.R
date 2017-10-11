
#Reguläre Ausdrücke zum suchen von Variablennamen
#https://stackoverflow.com/questions/7562233/how-do-i-select-variables-in-an-r-dataframe-whose-names-contain-a-particular-str
#Brian Diggs

grep("^[rex]", names(df), value=TRUE)

df[,grep("^[rex]", names(df), value=TRUE)]