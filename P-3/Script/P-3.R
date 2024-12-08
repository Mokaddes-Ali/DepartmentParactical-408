library(sf)
div_map<-read_sf("E:\\Department Final Year\\408 Practical\\problem 1-6\\data\\BD_shp\\adm1.shp")
names(div_map)


divpoper_BD<-read.csv("E:\\Department Final Year\\408 Practical\\problem 1-6\\data\\census.csv")

library(dplyr)
divpoper_GE_BD <- left_join(div_map,divpoper_BD)
names(divpoper_GE_BD)

library(tmap) 
#Male
Male<- tm_shape(divpoper_GE_BD)+
  tm_polygons("Male.per", title = "Male Percentage", palette = "Blues")+
  tm_borders()

#Female
Female<- tm_shape(divpoper_GE_BD)+
  tm_polygons("Female.per")+
  tm_borders()

