install:
	Rscript -e "renv::restore()"

output/report.html: code/analysis.Rmd data/U.S._Chronic_Disease_Indicators.csv
	Rscript -e "rmarkdown::render('code/analysis.Rmd')"
	