rm(list=ls())
library("shiny")
library("shinyRGL")
library(stringdist)
library(igraph)
library(rgl)
require(class)


df <- read.csv("d:/COURSERA_DATA_SCIENCE/Developing_Data_Products/Application/testDb/BeersForApplication_4.csv")
head(df)

namesLargeSet <- c("Pater 6",
                   "Skinny Dip",
                   "Hot Shot ESB",
                   "Nogne o Imperial Stout",
                   "Nogne o Porter") 
D <- stringdistmatrix(namesLargeSet, namesLargeSet)
D <- as.data.frame(D)
rownames(D) <- namesLargeSet
D
