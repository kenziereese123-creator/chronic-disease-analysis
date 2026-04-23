# Exploratory Analysis of U.S. Chronic Disease Indicators

## Overview
This project analyzes cancer-related indicators from the U.S. Chronic Disease Indicators (CDI) dataset, published by the CDC. The report examines geographic variation in cancer burden across U.S. states and territories.

## How to Generate the Report
Open Terminal and run:
```
make
```
This will knit the R Markdown file and generate the final report at `output/report.html`.

## How to Synchronize the Package Environment
This project uses [`renv`](https://rstudio.github.io/renv/) to manage R package dependencies. 
To restore the exact package versions used in this analysis, run:
```
make install
```
This will call `renv::restore()`, which installs all packages listed in `renv.lock`.

## Building the Docker Image

To build the Docker image locally, run from the project root:
```bash
docker build -t kenziereese123/chronic-disease-analysis .
```
The image is also available on DockerHub:
[https://hub.docker.com/r/kenziereese123/chronic-disease-analysis](https://hub.docker.com/r/kenziereese123/chronic-disease-analysis)

## Generating the Report with Docker

Ensure the `report/` directory exists in the project root, then run:

**Mac/Linux:**
```bash
make report
```
The compiled report will appear as `report/report.html` when the container finishes.

## Repository Contents
- `data/` — contains the raw dataset (`chronic_disease_indicators.csv`) downloaded from the CDC
- `code/` — contains the R Markdown source file (`analysis.Rmd`)
- `output/` — contains the compiled report (`report.html`)
- `report/` — contains the Docker-generated report
- `Makefile` — contains the rule for building the final report
- `Dockerfile` — contains instructions for building the Docker image

## Table
The code for the summary table (Top 10 States by Average Cancer-Related Indicator Value) is located in `code/analysis.Rmd` in the chunk labeled `summary-table`.

## Figure
The code for the figure (States with Highest and Lowest Invasive Cancer Incidence Rates) is located in `code/analysis.Rmd` in the chunk labeled `incidence-plot`.