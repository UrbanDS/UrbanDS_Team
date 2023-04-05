library(rgdal)
library(raster)
library(sf)
library(ggplot2)

setwd("E:/TAMU/DataScience/NLDAS_5feature")

# path = "NLDAS_preci_wind"

file_names=list.files(pattern="*.grb")

file_num = length(file_names)

sum = 0

for (j in 1:10) {
  
  for(i in 1:file_num){
    
    file=file_names[i]
    
    # year = substring(file,1,4)
    
    weather <- readGDAL(file)
    
    # band_num = length(weather@data)
    
    raster_layer <- raster(weather[j])
    
    plot(raster_layer)
    
    raster_layer_sum = raster_layer + sum
    
    sum = raster_layer_sum
  
  }  
  
  mean = sum/file_num
  
  rf <- writeRaster(mean, filename = paste("test",j,".tif"), overwrite = TRUE)
  
}
    # 
    # file_2=file_names[2]
    # 
    # weather2 <- readGDAL(file_2)
    # 
    # test2 <- raster(weather2)
    # plot(test2)
    # 
    # test_1 = test2 + test
    
    # 
    # band_num = length(weather@data)
    # 
    # test <- raster(weather$band1)
    
    
    

  





