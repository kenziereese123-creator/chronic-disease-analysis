# Exploratory Analysis of U.S. Chronic Disease Indicators

## Overview
This project analyzes cancer-related indicators from the U.S. Chronic Disease Indicators (CDI) dataset, published by the CDC. The report examines geographic variation in cancer burden across U.S. states and territories.

## How to Generate the Report
Open Terminal and run:
```
make
```
This will knit the R Markdown file and generate the final report at `output/report.html`.

## Repository Contents
- `data/` — contains the raw dataset (`chronic_disease_indicators.csv`) downloaded from the CDC
- `code/` — contains the R Markdown source file (`analysis.Rmd`)
- `output/` — contains the compiled report (`report.html`)
- `Makefile` — contains the rule for building the final report

## Table
The code for the summary table (Top 10 States by Average Cancer-Related Indicator Value) is located in `code/analysis.Rmd` in the chunk labeled `summary-table`.

## Figure
The code for the figure (States with Highest and Lowest Invasive Cancer Incidence Rates) is located in `code/analysis.Rmd` in the chunk labeled `incidence-plot`.
