pdf: main.tex
	lualatex --jobname=Tmima2_Omada4 main.tex
	biber Tmima2_Omada4
	lualatex --jobname=Tmima2_Omada4 main.tex
	lualatex --jobname=Tmima2_Omada4 main.tex

clean:
	rm *.log
	rm *.out
	rm *.aux
	rm *.bbl
	rm *.bcf
	rm *.blg
	rm *.xml
	rm *.toc