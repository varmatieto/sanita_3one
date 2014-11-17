######## sanita 3 in uno

### library


library (ggplot2)
library(scales)
library(shiny)

### data 

load ("data/S2_branca.rda")
load ("data/S2_azienda.rda")
load ("data/S2_azbrtp.rda")


S2_azbrtp<-S2_azbrtp[order(S2_azbrtp$tipo),]

myColors <- c("red", "blue")
names(myColors) <- levels(S2_azbrtp$tipo)

mybranche<-names(S2_branca)
names(mybranche)<-S2_branca

myaziende<-names(S2_azienda)
names(myaziende)<-S2_azienda


