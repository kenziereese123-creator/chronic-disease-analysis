FROM rocker/tidyverse

RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev

RUN Rscript -e "install.packages('renv', repos = 'https://cloud.r-project.org')"

WORKDIR /project

COPY renv.lock renv.lock
COPY renv/activate.R renv/activate.R
COPY .Rprofile .Rprofile
RUN Rscript -e "renv::restore()"

COPY code/ code/
COPY data/ data/

RUN apt-get update && apt-get install -y pandoc

CMD Rscript -e "rmarkdown::render('code/analysis.Rmd', output_dir = '/project/report', output_file = 'report.html')"