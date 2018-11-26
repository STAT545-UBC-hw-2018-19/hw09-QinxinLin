library(tidyverse)

LL <- read.delim("tsvdata/lastletter.tsv")
p <- ggplot(LL,aes(x=LastLetter,y=Freq))+
	geom_bar(stat = "identity")+
	xlab("Letters") + 
	ylab("Number of Words") 
ggsave(plot = p, filename = "figures/lastletter.png")