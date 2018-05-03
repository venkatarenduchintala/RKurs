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
pair(iris[, -5])
dev.off()


#Hypothesis Testing 
##Hypothesis - Tests Approach
# Step 1 Declare model by which data were generate (e.g. population is normally distributed, large sample size and (signma) not known)

#Step 2 Define null hypothesis H0* and alternative hypothesis HA**
#           *   The statement being tested in a test of [statistical] significance. Test the strength of the evidence against the null hypothesis.
#           **  The statement that is hoped or expected to be true instead of the null hypothesis.

#Step 3 Choose the level of significance (alpha)

#Step 4: Determine critical values for the level of significance (alpha) and degrees of freedom df = (n - 1)

#Step 5: Defne and calculate test statistic, e.g. one-sample test t= (xbar - mu0)/(sx / sqrt(n))

#Step 6: Compare the test statistic to the critical values and make decision: reject or fail to reject H0



#Hypothesis
testdata <- iris[iris$Species != "setosa", c("Sepal.Length", "Species")]
str(testdata)
testdata$Species <- droplevels(testdata$Species)
str(testdata)

#T-Test
hist(testdata[testdata$Species == "virginica", "Sepal.Length"], breaks = 20)


#Do we have equal variance --- we can find out with boxplot
boxplot(Sepal.Length~ Species, data = testdata)


#Q-Q plot
qqnorm(testdata[testdata$Species == "virginica", "Sepal.Length"])
#to show a linear relationship - qqline
qqline(testdata[testdata$Species == "virginica", "Sepal.Length"])

qqnorm(testdata[testdata$Species != "virginica", "Sepal.Length"])
#to show a linear relationship - qqline
qqline(testdata[testdata$Species != "virginica", "Sepal.Length"])


t.test(Sepal.Length~Species, data = testdata)


#If normalisty is not given - we have the Wilcoxon rank test
boxplot(Sepal.Length ~Species, data = testdata)
wilcox.test(Sepal.Length ~Species, data = testdata)
