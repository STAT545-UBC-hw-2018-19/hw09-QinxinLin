library(tidyverse)

FL <- read.delim("tsvdata/firstletter.tsv")
p <- ggplot(FL,aes(x=FirstLetter,y=Freq))+
	geom_bar(stat = "identity")+
	xlab("Letters") + 
	ylab("Number of Words") 
ggsave(plot = p, filename = "figures/firstletter.png")

