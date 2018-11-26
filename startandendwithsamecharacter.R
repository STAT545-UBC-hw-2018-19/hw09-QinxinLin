library(tidyverse)

words <- readLines("words.txt")
w1 <- str_subset(words,"^(.).*\\1$") #words starting and ending with the same character
w2 <- substr(w1,1,1) # first letter of words 
write.table(table(w2),"tsvdata/StartandEndwithSameCharacter.tsv",sep = "\t", row.names = FALSE, quote = FALSE)
