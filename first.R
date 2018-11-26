library(tidyverse)

words <- readLines("words.txt")
FirstLetter <- substr(words,1,1)
write.table(table(FirstLetter),"tsvdata/firstletter.tsv",sep = "\t", row.names = FALSE, quote = FALSE)
