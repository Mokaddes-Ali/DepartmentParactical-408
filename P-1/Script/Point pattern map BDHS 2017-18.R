# library(sf)
# library(tmap)

# # load BDHS clusters shapefile
# GE_BDHS17 <- read_sf("C:\\Users\\ASUS_VivoBook\\Desktop\\408 (practical)\\problem 1-6\\P-1\\Data\\BDGE7SFL\\BDGE7SFL.shp")
# tm_shape(GE_BDHS17) +  
#   tm_dots()

# # load division shapefile
# div_map <- read_sf( "C:\\Users\\ASUS_VivoBook\\Desktop\\408 (practical)\\problem 1-6\\P-1\\Data\\BD_shp\\adm1.shp" )
# tm_shape(div_map) +       
#     tm_borders() 


# bd_map <- tm_shape(div_map) +       
#           tm_borders(lwd=2) +
#        tm_shape(GE_BDHS17) +  
#           tm_dots(col = "blue")

  
# tmap_save(bd_map,"C:\\Users\\ASUS_VivoBook\\Desktop\\408 (practical)\\problem 1-6\\P-1\\Output\\map3.png")

# # load BDHS clusters shapefile

print("Hello")