#start with the rocker/verse
FROM rocker/rstudio:latest

#install all the packages that I need
RUN R -e "install.packages(c('cronR','RSelenium','sendmailR','xlsx','RSQLite','DBI','RPostgreSQL','rvest','stringr','data.table','crayon','wdman','Rcrawler'), repos='http://cran.rstudio.com/')"
