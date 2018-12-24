#start with the rocker/verse
FROM rocker/rstudio:latest

# Install Ubuntu packages
RUN apt-get update && apt-get install -y \
    sudo \
    gdebi-core \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev/unstable \
    libxt-dev \
    libssl-dev \
    libxml2 \
    libxml2-dev
    
    
#install all the packages that I need
RUN R -e "install.packages(c('cronR','RSelenium','sendmailR','xlsx','RSQLite','DBI','RPostgreSQL','rvest','stringr','data.table','crayon','wdman','Rcrawler','shiny','shinyFiles','miniUI'), repos='http://cran.rstudio.com/')"
