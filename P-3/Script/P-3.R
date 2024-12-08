library(sf)
div_map<-read_sf("C:\\Users\\ASUS_VivoBook\\Desktop\\408 (practical)\\problem 1-6\\P-1\\Data\\BD_shp\\adm1.shp")

divpoper_BD<-read.csv("C:/Users/ASUS_VivoBook/Desktop/408 (practical)/problem 1-6/P-3/Data/maleFemalePer.csv")

library(dplyr)
divpoper_GE_BD <- left_join(div_map,divpoper_BD)

library(tmap) 
#Male
Male<- tm_shape(divpoper_GE_BD)+
  tm_polygons("Male.per")+
  tm_borders()

#Female
Female<- tm_shape(divpoper_GE_BD)+
  tm_polygons("Female.per")+
  tm_borders()

