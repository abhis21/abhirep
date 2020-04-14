library(datasets)
#airq
quakes <- datasets::quakes

#1st 6 row
head(quakes,10)
head(quakes)
tail(quakes)
tail(quakes,10)
quakes
colnames(quakes)
quakes[c(1,5),c(1,3)]
# how can we fetch 1st 5 rows data for particular no of columns
quakes[0:4]
quakes[5:10,2:4]
quakes$depth[5:10]
# how can we access particular rows infon for particular column
#quakes$depth[5:10]  quakes$stations[5:10]

summary(quakes)
summary(quakes$depth)

plot(quakes)
#What is plot function
#plot.function(quakes$long,y=10,to=15,from=12)

plot(quakes$depth , quakes$mag)

#leanior regration bw particular columns
plot(quakes[3:5])

plot(quakes)

plot(quakes[1,3:5])

### how can we plot for particular no of rows and colmns 
#plot(quakes$depth[5:10,3:5])

plot(quakes$depth,type='b')
plot(quakes$depth,type='l')
plot(quakes$depth,type='p')


#how can we access multiple col at same time
#quakes$stations quakes$depth


plot(quakes$stations)

quakes$stations
quakes$depth
plot(quakes$stations,quakes$depth,xlab = "Station major" , ylab="Earth quack in Depth of station  ", main = "Depth level of earth quack station wise", col='green')

#bar chart not able to understand it, what is difference bw if we major x and y 2 different axises and single one x axis
barplot(quakes$stations,quakes$depth,xlab = "Station major" , ylab="Earth quack in Depth of station  ", main = "Depth level of earth quack station wise", col='green')
barplot(quakes$stations,xlab = "Station major" ,col='green')


#Histogram
hist(quakes$stations)
hist(quakes$depth)
hist(quakes$stations , xlab = "Station major" ,col='green')

boxplot(quakes$stations[5:10])
boxplot(quakes[,2:5])
boxplot(quakes[1,2:5])
boxplot(quakes$depth)
boxplot(quakes$mag)
boxplot(quakes$stations)
  

#margine and multiple graphs in one window

par(mfrow=c(3,3),mar=c(2,5,2,1),las=1,bty = "o")
#Not able to implement this plot in par
plot(quakes)
plot(quakes$depth)
plot(quakes$depth,quakes$stations)
#plot(quakes[5:10,3:5])
barplot(quakes$depth,main = "depth scaler",xlab = "depth x axis",ylab = "depth y axis",ccol = "green",horiz = TRUE)
hist(quakes$stations)
boxplot(quakes$depth)
boxplot(quakes[,0:4], main="Earth Quake Scaller")
