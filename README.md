## Homework 09: Automating Data-analysis Pipelines

In this assignment, the original pipeline is [here](https://github.com/STAT545-UBC/make-activity). 

I have added two analysis to this pipeline, **analysis1** and **analysis2**. The Makefile is [here](Makefile).

* analysis 1: it is the original one, it can be uesd to analyse the length of each word in the dictionary word.txt and plot the histogram of word length distribution. The markdown report for analysis 1 is [report.md](report.md).

* analysis 2: this analysis is created by me, including three new functions. The markdown report for analysis 2 is [data-analysis.md](data-analysis.md).

  * Count up the words starting with each character: [first.R](first.R) and [first_plot.R](first_plot.R)
  
  * Count up the words ending with each character: [last.R](last.R) and [last_plot.R](last_plot.R)
  
  * Count up the words starting and ending with same character: [startandendwithsamecharacter.R](startandendwithsamecharacter.R) and [startandendwithsamecharacter_plot.R](startandendwithsamecharacter_plot.R)

Two analysis means you can clean both analysis and then build them, or you can just run one of analysis and build it again. It provides multiple options for you. 

### Progress report

In this assignment, making three new functions is not very difficult, but generating two analysis in this pipeline is a little bit time-consuming. Although the process is not easy, but the result is good. I think this assignment is very interesting and I really learn a lot from it. 






  
  



