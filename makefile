# GNU make
ENGINE = lualatex
BIB = biber
JOB = Tmima2_Omada4

pdf: main.tex
	$(ENGINE) --jobname=$(JOB) main.tex
	$(BIB) $(JOB)
	$(ENGINE) --jobname=$(JOB) main.tex
	$(ENGINE) --jobname=$(JOB) main.tex

clean:
	rm *.log
	rm *.out
	rm *.aux
	rm *.bbl
	rm *.bcf
	rm *.blg
	rm *.xml
	rm *.toc
