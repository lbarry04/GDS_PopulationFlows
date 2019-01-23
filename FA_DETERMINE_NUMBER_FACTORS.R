# Maximum Likelihood Factor Analysis
# entering raw data and extracting 6 factors, 
# with varimax rotation
#install.packages(c("sp", "MASS", "reshape2", "geojsonio", "rgdal", "downloader", "maptools", "dplyr", "broom", "stplanr", "ggplot2", "leaflet"))
#library(dplyr); library(tidyr)
#install.packages(c("nFactors"))
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/ALL_soa_spintg_rdlen_localproduction_pow_AdditionalFinal.csv")
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/ALL_wards01spintg_rdlen_localproduction_pow_Additional.csv")
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/bfs_wards01spintg_localproduction_pow_Additional.csv") 
mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/20kwards01spintg_localproduction_pow_Additional.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/10kwards01spintg_localproduction_pow_Additional.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/5kwards01spintg_localproduction_pow_Additional.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/local_allsoa11_spintg_localproduction_pow_reg20kEBANN.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/local_allsoa11_spintg_localproduction_pow_reg20kWBANN_2vars.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/local_allsoa11_spintg_localproduction_pow_reg10kEBANN.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/local_allsoa11_spintg_localproduction_pow_reg10kWBANN.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/local_allsoa11_spintg_localproduction_pow_reg5kEBANN.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/local_allsoa11_spintg_localproduction_pow_reg5kWBANN.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/Wards01_MIGRATION_REG20k_spintg_localproduction_pow.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/Wards01_MIGRATION_REG4k_spintg_localproduction_pow.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/local_allsoa11_spintg_localproduction_pow_ruralfinal.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/local_allsoa11_spintg_localproduction_pow_urban.csv") 

#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/ALL_soa_spintg_rdlen_localattraction_pow_AdditionalFinal.csv")
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/ALL_wards01spintg_rdlen_localattraction_pow_Additional.csv")
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/bfs_wards01spintg_localattraction_pow_Additional.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/20kwards01spintg_localattraction_pow_Additional.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/10kwards01spintg_localattraction_pow_Additional.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/5kwards01spintg_localattraction_pow_Additional.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/local_allsoa11_spintg_localattraction_pow_reg20kEBANN.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/local_allsoa11_spintg_localattraction_pow_reg20kWBANN_2vars.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/local_allsoa11_spintg_localattraction_pow_reg10kEBANN.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/local_allsoa11_spintg_localattraction_pow_reg10kWBANN.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/local_allsoa11_spintg_localattraction_pow_reg5kEBANN.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/local_allsoa11_spintg_localattraction_pow_reg5kWBANN.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/Wards01_MIGRATION_REG20k_spintg_localattraction_pow.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/Wards01_MIGRATION_REG4k_spintg_localattraction_pow.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/local_allsoa11_spintg_localattraction_pow_ruralfinal.csv") 
#mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/local_allsoa11_spintg_localattraction_pow_urban.csv") 

#ALL_soa_spintg_rdlen_localproduction_pow_AdditionalFinal
#ALL_wards01spintg_rdlen_localproduction_pow_Additional
#bfs_wards01spintg_localproduction_pow_Additional
#20kwards01spintg_localproduction_pow_Additional
#10kwards01spintg_localproduction_pow_Additional
#5kwards01spintg_localproduction_pow_Additional
#local_allsoa11_spintg_localproduction_pow_reg20kEBANN
#local_allsoa11_spintg_localproduction_pow_reg20kWBANN_2vars
#local_allsoa11_spintg_localproduction_pow_reg10kEBANN
#local_allsoa11_spintg_localproduction_pow_reg10kWBANN
#local_allsoa11_spintg_localproduction_pow_reg5kEBANN
#local_allsoa11_spintg_localproduction_pow_reg5kWBANN
#Wards01_MIGRATION_REG20k_spintg_localproduction_pow
#Wards01_MIGRATION_REG4k_spintg_localproduction_pow
#local_allsoa11_spintg_localproduction_pow_ruralfinal
#local_allsoa11_spintg_localproduction_pow_urban


# exclude text variable destination
myvars <- names(mydata) %in% c("Destination", "X") 
newdata <- mydata[!myvars]
#newdata <- as.matrix(newdata)

# Determine Number of Factors to Extract
library(nFactors)
ev <- eigen(cor(newdata)) # get eigenvalues
ap <- parallel(subject=nrow(newdata),var=ncol(newdata),
               rep=100,cent=.05)
nS <- nScree(x=ev$values, aparallel=ap$eigen$qevpea)
plotnScree(nS, main = "Solutions to Scree Test - M4 Production")