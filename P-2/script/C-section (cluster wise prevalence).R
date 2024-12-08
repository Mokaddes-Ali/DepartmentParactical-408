
cSec17 <- read.csv("C:\\Users\\ASUS_VivoBook\\Desktop\\408 (practical)\\problem 1-6\\P-2\\data\\cSec.csv")

library(sf)          
locations_longlat <- read_sf( "C:\\Users\\ASUS_VivoBook\\Desktop\\408 (practical)\\problem 1-6\\P-1\\Data\\BDGE7SFL\\BDGE7SFL.shp" )

library(dplyr)
cSec_longlatBDHS17 <-  left_join(locations_longlat, 
                                  cSec17, 
                                  join_by(DHSCLUST == dhsclust))
# load division shapefile
div_map <- read_sf( "C:\\Users\\ASUS_VivoBook\\Desktop\\408 (practical)\\problem 1-6\\P-1\\Data\\BD_shp\\adm1.shp" )

library(tmap)
Output <- tm_shape(div_map) +       
              tm_borders() +
          tm_shape(cSec_longlatBDHS17) +  
              tm_dots(col = "cSecRate", size = 0.3)



tmap_save(Output,"C:\\Users\\ASUS_VivoBook\\Desktop\\408 (practical)\\problem 1-6\\P-2\\Output\\CsecMap.png")
