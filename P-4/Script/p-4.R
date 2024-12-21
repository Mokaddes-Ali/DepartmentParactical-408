library(sf)
div_map<-read_sf("E:\\Department Final Year\\408 Practical\\problem 1-6\\data\\BD_shp\\adm1.shp")

# Create divisional area in km2
div_map$Shape_Areakm2  <- div_map$Shape_Area * 10000

divpoper_BD<-read.csv("E:\\Department Final Year\\408 Practical\\problem 1-6\\data\\census.csv")
name(divpoper_BD)
library(dplyr)

divpoper_GE_BD<-left_join(div_map,divpoper_BD)

divpoper_GE_BD$density<- (divpoper_GE_BD$Total%/%divpoper_GE_BD$Shape_Area)

library(tmap) 

#Percentage
Percentage<- tm_shape(divpoper_GE_BD)+
  tm_polygons("Percentage")+
  tm_borders(col = "black")

tmap_save(Percentage,"E:\\Class\\4H\\408\\Practical\\P-4\\Output\\Percentage.png")

#Density
Density<- tm_shape(divpoper_GE_BD)+
  tm_polygons("density")+
  tm_borders(col = "black")

tmap_save(Density,"E:\\Class\\4H\\408\\Practical\\P-4\\Output\\Density.png")
