##Second day lecture

?iris


#High level plotting function

#histograms
hist(iris$Sepal.Length)
?hist
hist(iris$Sepal.Length, breaks = 30)

#boxplot
boxplot(Sepal.Width ~ Species, data = iris)

#plot
?plot

plot(x=iris$Sepal.Length, y=iris$Sepal.Width)

plot(x=iris$Sepal.Length, y=iris$Sepal.Width, main = "Iris Data", xlab = "Sepal Length (mm)", ylab = "Sepal Width (mm)", asp = 1) #observe asp == 1 special case.. read help


plot(x=iris$Sepal.Length, y= iris$Sepal.Width, pch = 20)
plot(x=iris$Sepal.Length, y= iris$Sepal.Width, pch = 20, col = 2)
plot(x=iris$Sepal.Length, y= iris$Sepal.Width, pch = 20, col = 2, cex = 1.5) #cex ? character extension 

plot(x=1:25, y=rep(1, 25), pch = 1:25, cex = 2, col = 1:25) #here you can see the default colours in R. 


#Map information of your data in parameter
plot(x= iris$Sepal.Length, y=iris$Sepal.Width, col = iris$Species)
legend('topright', legend = levels(iris$Species), pch=20, col=1:3)

abline(h=3)
abline(v = 6, col = "pink", lty=4, lwd = 5)
text(x= 6.5, y=4, labels="hello")
points(x=4.5, y=4, col="blue")

#Anther interesting function
pairs(iris[, -5])
pairs(iris[, -5], col = iris$Species)
pairs(iris)


#How tosave a plot outside
?png
getwd()
setwd('./data')
png(filename='my_plot.png', width = 500, height = 500)
