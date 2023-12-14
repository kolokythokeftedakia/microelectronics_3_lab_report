# GNU make
ENGINE = lualatex
BIB = biber
JOB = Tmima2_Omada4

pdf: main.tex
	$(ENGINE) --jobname=$(JOB) main.tex
	$(BIB) $(JOB)
	$(ENGINE) --jobname=$(JOB) main.tex
	$(ENGINE) --jobname=$(JOB) main.tex

# UNIX-like
clean:
	rm *.log || true
	rm *.out || true
	rm *.aux || true
	rm *.bbl || true
	rm *.bcf || true
	rm *.blg || true
	rm *.xml || true
	rm *.toc || true

# Windows
w_clean:
	del *.log
	del *.out
	del *.aux
	del *.bbl
	del *.bcf
	del *.blg
	del *.xml
	del *.toc
