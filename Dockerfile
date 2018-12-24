#start with the rocker/verse
FROM rocker/rstudio:latest

RUN R -e "install.packages('rvest','stringr','data.table','Rcrawler','crayon','wdman','Rcrawler', repos = 'http://cran.us.r-project.org')"
