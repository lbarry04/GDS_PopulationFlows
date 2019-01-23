# Maximum Likelihood Factor Analysis
# entering raw data and extracting 6 factors, 
# with varimax rotation
#install.packages(c("sp", "MASS", "reshape2", "geojsonio", "rgdal", "downloader", "maptools", "dplyr", "broom", "stplanr", "ggplot2", "leaflet"))
#library(dplyr); library(tidyr)
mydata = read.csv("C:/Lorraine/OUTPUTS/FINAL_FINAL_OUTPUTS/JOIN_TABLES/20kwards01spintg_localproduction_pow_Additional.csv") 
# exclude text variable destination
myvars <- names(mydata) %in% c("Destination", "X") 
newdata <- mydata[!myvars]
#newdata <- as.matrix(newdata)


fit <- factanal(newdata, 4, n.obs = 25, rotation="varimax")
print(fit, digits=2, cutoff=.3, sort=TRUE)
#summary(fit)
# plot factor 1 by factor 2 
load <- fit$loadings[,1:2] 
plot(load,type="n") # set up plot 
text(load,labels=names(newdata),cex=.7) # add variable names

#round(newdata - (fit$loadings %*% t(fit$loadings) + diag(fit$uniquenesses)), 3)


