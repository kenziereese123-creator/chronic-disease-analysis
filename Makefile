.PHONY: report

install:
	Rscript -e "renv::restore()"

output/report.html: code/analysis.Rmd data/U.S._Chronic_Disease_Indicators.csv
	Rscript -e "rmarkdown::render('code/analysis.Rmd')"

report:
	docker run --rm \
	  -v $$(pwd)/report:/project/report \
	  kenziereese123/chronic-disease-analysis
	  
report-windows:
	docker run --rm \
	  -v //$$(pwd)/report:/project/report \
	  kenziereese123/chronic-disease-analysis