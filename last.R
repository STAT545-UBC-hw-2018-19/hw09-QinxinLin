library(tidyverse)

words <- readLines("words.txt")
LastLetter <- substr(words,str_length(words),str_length(words))
write.table(table(LastLetter),"tsvdata/lastletter.tsv",sep = "\t", row.names = FALSE, quote = FALSE)


