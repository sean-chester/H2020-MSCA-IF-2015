proposal=IF-2016-Part_B

all:
	make proposal

proposal:
	pdflatex --shell-escape ${proposal}
	biber ${proposal}
	pdflatex --shell-escape ${proposal}
	pdflatex ${proposal}

doc1: proposal
	pdflatex -jobname=document1 "\includeonly{doc1}\input{IF-2016-Part_B}"

doc2: proposal
	pdflatex -jobname=document2 "\includeonly{doc2}\input{IF-2016-Part_B}"

clean:
	rm -f *~ *.aux *.idx *.log *.bbl *.lol *.lof *.lot *.blg *-blx.bib *.out *.backup *.brf *.toc  *.bcf *.run.xml

