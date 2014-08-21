rm(list=ls())

library(devtools)

## Install Slidify
#install_github('slidify', 'ramnathv')
#install_github('slidifyLibraries', 'ramnathv')

## Load Slidify
library(slidify)
library(slidifyLibraries)

setwd("d:/COURSERA_DATA_SCIENCE/Developing_Data_Products/BeerPresentation/Presentation-Beer-Recommendation-Engine/")

author("Beer_Rec_Engine")

list.files()

slidify("index.Rmd")

browseURL("index.html")

getwd()

list.files()

#publish(user = "radmar2002", repo = "https://github.com/radmar2002/Presentation-Beer-Recommendation-Engine")

