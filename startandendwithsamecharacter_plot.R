library(tidyverse)

sc <- read.delim("tsvdata/StartandEndwithSameCharacter.tsv")
p <- ggplot(sc,aes(x=w2,y=Freq))+
	geom_bar(stat = "identity")+
	xlab("Letters") + 
	ylab("Number of Words Starting and Ending with Same character") 
ggsave(plot = p, filename = "figures/StartandEndwithSameCharacter.png")
