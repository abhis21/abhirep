#install.packages(datasets.load")
library(datasets)
#airq
airq <- datasets::airquality

#1st 6 row
head(airq,10)
tail(airq)
airq[,c(1,2)]
airq$Temp
airq[c(-2),c(1,2)]
colnames(airq)
summary(airq$Temp)

###########  scatter plot
plot(airq$Temp,airq$Ozone)
plot(airq)

#point and lines
plot(airq$Ozon, type = 'b') #b=both,l=line and p=plot




