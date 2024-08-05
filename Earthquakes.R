#e_quakes = read.csv('path/e_quakes.csv',header=TRUE, sep=",")
e_quakes <- datasets::quakes

####Top 10 rows and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)
######Columns
e_quakes[,c(1,2)]

df<-e_quakes[,-6]

summary(e_quakes[,1])

e_quakes$Wind

summary(e_quakes$Wind)

###########Summary of the data#########

summary(e_quakes)
summary(e_quakes$Wind) 

#####################
plot(e_quakes$long,e_quakes$depth,type="l")
plot(e_quakes)
# points and lines 
plot(e_quakes$mag, type= "p") # p: points, l: lines,b: both
plot(e_quakes$stations, xlab = 'Instances', 
     ylab = 'Earthquake Magnitude', main = 'Earthquakes in NY city',
     col = 'blue')
# Horizontal bar plot
barplot(e_quakes$depth, main = 'Depth Of Earthquake',
        ylab = 'Instances', col= 'blue',horiz = F,axes=T)
#Histogram
hist(e_quakes$long)
hist(e_quakes$depth, 
     main = 'Earthquake Depthness',
     xlab = 'Depth.', col='orange')

#Single box plot
boxplot(e_quakes$depth,main="Boxplot")
# Multiple box plots
boxplot(e_quakes[,1:4],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(e_quakes$depth)
plot(e_quakes$depth, e_quakes$long)
plot(e_quakes$lat, type= "l")
plot(e_quakes$long, type= "l")
plot(e_quakes$depth, type= "l")
barplot(e_quakes$depth, main = 'Depthness Of Earthquakes',
        xlab = 'Depth', col='green',horiz = TRUE)
hist(e_quakes$depth)
boxplot(e_quakes$depth)
boxplot(e_quakes[,0:4], main='Multiple Box plots')

sd(airquality$long,na.rm = T)

var(e_quakes$depth)
skewness(e_quakes$depth)
kurtosis(e_quakes$depth)









