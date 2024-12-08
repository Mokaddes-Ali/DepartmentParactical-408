library(sf)
library(tmap)

# load BDHS clusters shapefile
GE_BDHS17 <- read_sf("E:\\Department Final Year\\408 Practical\\problem 1-6\\data\\BDGE7SFL\\BDGE7SFL.shp")
tm_shape(GE_BDHS17) +  
  tm_dots()

# load division shapefile
div_map <- read_sf( "E:\\Department Final Year\\408 Practical\\problem 1-6\\data\\BD_shp\\adm1.shp" )
tm_shape(div_map) +       
    tm_borders() 


bd_map <- tm_shape(div_map) +       
          tm_borders(lwd=2) +
       tm_shape(GE_BDHS17) +  
          tm_dots(col = "blue")

  
tmap_save(bd_map,"E:\\Department Final Year\\408 Practical\\problem 1-6\\P-1\Output\\mp4.png")



