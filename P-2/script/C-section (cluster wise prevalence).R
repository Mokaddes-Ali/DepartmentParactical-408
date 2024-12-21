
cSec17 <- read.csv("E:\\Department Final Year\\408 Practical\\problem 1-6\\data\\cSec.csv")

library(sf)          
locations_longlat <- read_sf( "E:\\Department Final Year\\408 Practical\\problem 1-6\\data\\BDGE7SFL\\BDGE7SFL.shp" )

library(dplyr)
cSec_longlatBDHS17 <-  left_join(locations_longlat, 
                                  cSec17, 
                                  join_by(DHSCLUST == dhsclust))

div_map <- read_sf( "E:\\Department Final Year\\408 Practical\\problem 1-6\\data\\BD_shp\\adm1.shp" )

library(tmap)
tm_shape(div_map) +       
              tm_borders() +
          tm_shape(cSec_longlatBDHS17) +  
              tm_dots(col = "cSecRate", size = 0.3)




