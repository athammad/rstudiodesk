#start with the rocker/verse
FROM rocker/rstudio:latest

#Copy the r script
#COPY scriptX.R scripX.R

#Copy the main folder
COPY Folder Folder

# when the container starts, start the main.R script
#ENTRYPOINT ["Rscript", "scriptX.R"]
#when the container starts, use the interactive mode
#CMD ["/bin/bash"]
