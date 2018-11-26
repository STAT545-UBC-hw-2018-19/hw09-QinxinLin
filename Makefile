all: analysis1 analysis2

clean: clean_analysis1 clean_analysis2

words.txt: /usr/share/dict/words
	cp $< $@

# analysis 1

clean_analysis1: 
	rm -rf words.txt report.md report.html histogram.png histogram.tsv 
	
analysis1: report.html
	
report.html: report.rmd histogram.tsv histogram.png 
	Rscript -e 'rmarkdown::render("$<")'

histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

histogram.tsv: histogram.r words.txt
	Rscript $<
	
# analysis 2

clean_analysis2: 
	rm -rf words.txt data-analysis.md data-analysis.html tsvdata/firstletter.tsv figures/firstletter.png tsvdata/lastletter.tsv figures/lastletter.png tsvdata/StartandEndwithSameCharacter.tsv figures/StartandEndwithSameCharacter.png

analysis2: data-analysis.html

data-analysis.html: data-analysis.rmd tsvdata/firstletter.tsv figures/firstletter.png tsvdata/lastletter.tsv figures/lastletter.png tsvdata/StartandEndwithSameCharacter.tsv figures/StartandEndwithSameCharacter.png
	Rscript -e 'rmarkdown::render("$<")'

tsvdata/firstletter.tsv: first.R words.txt
	Rscript $<
	
figures/firstletter.png: first_plot.R tsvdata/firstletter.tsv
	Rscript $<
	rm Rplots.pdf
	
tsvdata/lastletter.tsv: last.R words.txt
	Rscript $<	
	
figures/lastletter.png: last_plot.R tsvdata/lastletter.tsv
	Rscript $<
	rm Rplots.pdf
	
tsvdata/StartandEndwithSameCharacter.tsv: startandendwithsamecharacter.R words.txt
	Rscript $<

figures/StartandEndwithSameCharacter.png: startandendwithsamecharacter_plot.R tsvdata/StartandEndwithSameCharacter.tsv
	Rscript $<
	rm Rplots.pdf

# words.txt:
#	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
