output/report.html: code/analysis.Rmd data/chronic_disease_indicators.csv
	Rscript -e "rmarkdown::render('code/analysis.Rmd', output_file='../output/report.html')"