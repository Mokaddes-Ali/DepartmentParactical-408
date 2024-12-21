library(sf)
library(tmap)


GE_BDHS17 <- read_sf("E:\\Department Final Year\\408 Practical\\problem 1-6\\data\\BDGE7SFL\\BDGE7SFL.shp")
tm_shape(GE_BDHS17) +  
  tm_dots()

div_map <- read_sf( "E:\\Department Final Year\\408 Practical\\problem 1-6\\data\\BD_shp\\adm1.shp" )
tm_shape(div_map) +       
    tm_borders() 


 tm_shape(div_map) +       
          tm_borders(lwd=2) +
       tm_shape(GE_BDHS17) +  
          tm_dots(col = "blue")





