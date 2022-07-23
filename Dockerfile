#start with the rocker/verse
FROM rocker/rstudio:latest

RUN apt-get update -qq && apt-get install -y \
  git \
  libssl-dev \
  libcurl4-gnutls-dev \
  libgdal1-dev \ 
  libproj-dev
  libpq-dev \
  make \
  zlib1g-dev \
  r-base \
  r-base-dev \
  gdebi-core \
  pandoc \
  pandoc-citeproc \
  libcairo2-dev \
  libxt-dev \
  xtail \
  wget \
  libxml2 \
  libxml2-dev \
  r-cran-caret 


#install all the packages that I need
RUN R -e "install.packages(c( 'data.table', 'ggplot2', 'jtools','pacman', 'lubridate','plotly', 'reticulate','telegram.bot'), repos='http://cran.us.r-project.org')"


#Copy the r script
#COPY scriptX.R scripX.R

#Copy the main folder
#COPY FolderX FolderX

# when the container starts, start the main.R script
#ENTRYPOINT ["Rscript", "scriptX.R"]
#when the container starts, use the interactive mode
#CMD ["/bin/bash"]
