### R code from vignette source '/sfs/u/andreass/Dokumente/GIT/R-Intro/material/Introduction/elOfRIntro-Intro.Rnw'

###################################################
###################################################
########### Introduction to R Course #############

### Welcome to the R course.
### This is the demo script, where you can find all the R code of the slides and play around with it.
### In an R script, the number sign # represents comments, which are intended for human reading and 
### are not interpreted by R (R ignores anything after a # in a line). 
### Comments help make scripts comprehensible for human readers, so go ahead and add your own useful
### comments to the commands in this demo code script.



###################################################
###################################################
options("digits")
options(width = 75, digits = 5) 
rm(list=ls())


###################################################
###################################################
sqrt(2)
x <- 3
y <- x^2
x + y
sin(2 * pi)


###################################################
###################################################
c(1, 5, 80)
2:11
a <- c(1, 6, 10, 22, 7, 13)
mean(a)
sum(a)


###################################################
###################################################
matrix()
m <- matrix(1:6, nrow=3, ncol=2, byrow = TRUE)
m 

data.frame()
df <- data.frame(Name = c("Ich","Du","Er"), 
	Geschlecht = as.factor(c(0,1,0)), Alter = c(21,47,33))
df


###################################################
###################################################
3 + 4


###################################################
###################################################
3 * (4 +
      2)


###################################################
###################################################
t.a <- 3 * (4 + 2)
t.b <- t.a + 2.5


###################################################
###################################################
t.a


###################################################
###################################################
mean(c(t.a,t.b))
mn <- mean(c(t.a,t.b))


###################################################
###################################################
t.a <- 3 * (4 + 2)


###################################################
###################################################
t.a <- t.b^2
t.a


###################################################
###################################################
##   ####
##   # Note that only the first argument, x, of the mean() function is required (mandatory argument).
##   # The rest of the arguments are optional (they have default values).
##   # To learn about a function's arguments and default values, use its help file:
##   ?mean
## 
## # We can calculate the sum of the vector a
## sum(a)
## 
## ####
## # The elements of a vector can only be of one class (numeric, character, or logical)
## 
## ## Examples
## # Numeric
## a
## 
## # Character (also known as `string`)
## myNames <- c("Mona", "Peter", "Lino")
## myNames
## 
## # Logical
## b <- (a > 6.5)  # b is now a logical vector
## 
## ####
## # Extract a substring
## ?substring
## substring(myNames, 1, 2)
## 
## # Concatenate strings
## ?paste
## paste(myNames, c("Lastname1", "Lastname2", "Lastname3"), sep = "_-_")
## 
## ####
## # Comparisons can be achieved by
## # <   <=    >   >=    ==    !=
## myNames == "Peter"
## 
## # Logical operations
## # & (AND)   | (OR)    ! (NOT)
## (a > 6) & (a < 14)
## 
## ####
## # Let's play around with the class of a vector
## # What happens?
## 
## c(1, "Sue", 5)
## 
## c(5, TRUE, FALSE)
## 
## c("Fritz", TRUE, 5)
## 
## ####
## # What happens if you run a statment which is not complete?
## 
## 2 + ( 8
##       
##       * 9
##       
## ) # the brackets have to be closed
## 
## ## > 2 + ( 8
## ## + * 9
## ## + ) # the brackets have to be closed
## ## [1] 74
## 
## # Please note that a '+appears if the statement is not finished
## # You can always press ESC in order to begin again
## 
## ####
## # You will need the following two functions for the first exercises
## ?rep
## 
## rep(c( "Mona", "Jonas"), length.out = 5)
## rep(c( 1, 50), times = 4)
## rep(c( 1, 50), times = c( 8, 3))
## rep(c( 1, 50), each = 8)
## 
## ?seq
## 
## seq(from = 33, to = 44, by = 0.5)


### R code from vignette source '/sfs/u/andreass/Dokumente/GIT/R-Intro/material/Introduction/elOfRIntro-import.Rnw'

###################################################
###################################################
options("digits")
options(width = 75, digits = 5) 
rm(list=ls())


###################################################
###################################################
url <- "http://stat.ethz.ch/Teaching/Datasets/WBL/sport.dat"
d.sport <- read.table(url, header = TRUE)
head(d.sport)


###################################################
###################################################
## getwd()  ## print the current working directory
## setwd("/userdata/Documents/Rcourse/")


###################################################
###################################################
## d.sport <- read.table(file = "sport.dat", header = TRUE)
## head(d.sport)


###################################################
###################################################
## write.table(x, file = "xy.txt", sep = " ")


###################################################
###################################################
## write.csv(...)
## write.csv2(...)


### R code from vignette source '/sfs/u/andreass/Dokumente/GIT/R-Intro/material/Introduction/elOfRIntro-index.Rnw'

###################################################
###################################################
options("digits")
options(width = 75, digits = 5) 

url <- "http://stat.ethz.ch/Teaching/Datasets/WBL/sport.dat"
d.sport <- read.table(url, header = TRUE)


###################################################
###################################################
str(d.sport)


###################################################
###################################################
kugel <- d.sport$kugel
str(kugel)
participant <- rownames(d.sport)
str(participant)


###################################################
###################################################
participant[4]
d.sport[c(3, 6, 4), c(1:3, 7)]
d.sport["FRITZ", ]


###################################################
###################################################
## d.sport[ , ]
## 
## c(1, 3, 7)
## 
## 1:10
## 
## d.sport[1:10 , ]
## 
## d.sport[-c( 1, 3, 7), ] # negative indices are excluded
## 
## d.sport[ , 2:3]
## 
## d.sport[c(1, 3, 6), 2:3]


###################################################
###################################################
## colnames(d.sport)
## 
## d.sport$kugel
## 
## d.sport[ , c("punkte", "kugel")] # pay attention to the order of the output
## 
## d.sport[1:5, c("punkte", "kugel")] # pay attention to the order of the output
## 
## # If rownames are present
## rownames(d.sport)
## 
## d.sport[c("OBRIEN", "FRITZ"), c("weit", "speer")]
## 
## # Logical vectors can also be used to access part of the data:
## 
## high.scores <- d.sport$punkte > 8500  # logical vector
## d.sport[ high.scores, ]


### R code from vignette source '/sfs/u/andreass/Dokumente/GIT/R-Intro/material/Introduction/elOfRIntro-NA.Rnw'

###################################################
###################################################
options("digits")
options(width = 75, digits = 5) 

url <- "http://stat.ethz.ch/Teaching/Datasets/WBL/sport.dat"
d.sport <- read.table(url, header = TRUE)


###################################################
###################################################
d.sport.NA <- d.sport
d.sport.NA[2, "kugel"] <- NA
d.sport.NA[3, "hoch"] <- -999


###################################################
###################################################
## is.na(d.sport.NA) # one logical value per element


###################################################
###################################################
sum(is.na(d.sport.NA)) # adds up the TRUE elements
which(is.na(d.sport.NA), arr.ind = TRUE) # where are the NA's?


###################################################
###################################################
## d.sport.NA[d.sport.NA == -999] <- NA
## ## alternatively, while reading in the data:
## d.sport <- read.csv("sport.dat", header = TRUE, na.strings = c("NA", "-999"))


###################################################
###################################################
## sum(d.sport.NA$kugel)
## sum(d.sport.NA$kugel, na.rm = TRUE)


###################################################
###################################################
## na.omit(d.sport.NA)


### R code from vignette source '/sfs/u/andreass/Dokumente/GIT/R-Intro/material/Introduction/elOfRIntro-function.Rnw'

###################################################
###################################################
options("digits")
options(width = 75, digits = 5) 

url <- "http://stat.ethz.ch/Teaching/Datasets/WBL/sport.dat"
d.sport <- read.table(url, header = TRUE)


###################################################
###################################################
mean(d.sport$kugel)
quantile(d.sport$kugel)
quantile(d.sport$kugel, probs = c(0.75, 0.9))


###################################################
###################################################
## ?mean


###################################################
###################################################
## mean(x = d.sport$kugel, na.rm = TRUE)


###################################################
###################################################
## mean(d.sport$kugel, ,TRUE)


###################################################
###################################################
## ?matrix


###################################################
###################################################
## str(d.sport)
## nrow(d.sport)
## ncol(d.sport)
## dim(d.sport)
## summary(d.sport)


###################################################
###################################################
## install.packages("MASS")  # install onto computer once
## require(MASS) # for every R session. Alternatively:
## library(MASS)


### R code from vignette source '/sfs/u/andreass/Dokumente/GIT/R-Intro/material/Introduction/graphics.Rnw'

###################################################
###################################################
options(width = 75, digits = 5)


###################################################
###################################################
data(iris) # now it shows up in the RStudio environment
iris


###################################################
###################################################
str(iris)


###################################################
###################################################
# High-level plotting function: opens a plot
plot(x = iris$Sepal.Width, y = iris$Sepal.Length, 
     col = iris[ , "Species"], pch = 19)
# Low-level plotting functions: add to an existing plot
legend("topright", legend = levels(iris[ ,"Species"]),
       pch = 19, col = 1:3) # add the legend


###################################################
###################################################
## # same plot as on the previous slide without a legend
## plot(Sepal.Length ~ Sepal.Width,
##      col = Species, pch = 19, data = iris)


###################################################
###################################################
## ## In the plot help file (?plot) you will see there are two versions of the plot function:
## ## The plot.default version works with plot(x=.., y=..,...), and the plot.formula version works with 
## ## a formula notation of plot(y ~ x,...). If you use plot.formula, you can also specify the data as an
## ## argument:
## 
## ## plot.formula:
## plot(Sepal.Length ~ Sepal.Width,
## col = Species, pch = 19, data = iris) # same plot as on slides
## plot(Sepal.Length ~ Sepal.Width + Petal.Length,
## col = Species, pch = 19, data = iris) # with formula notation, can get several plots
## 
## ## Since the data argument doesn't work for the plot.default version, you could still use the with() function to specify a data object for use in the second argument (which is the plot function):
## with(data = iris, plot(x = Sepal.Width, y = Sepal.Length,
##                        col = Species, pch = 19))


###################################################
###################################################
pairs(iris[ , -5], col = iris[ , 5])


###################################################
###################################################
## ## Examples:
## # interaction.plot: (first look at the existing dataset ToothGrowth)
## with(ToothGrowth, interaction.plot(x.factor = dose, trace.factor = supp, response = len))
## 
## # boxplot:
## boxplot(iris$Sepal.Length ~ iris$Species)
## plot(iris$Sepal.Length ~ iris$Species) ## this also creates a boxplot because Species is coded as a factor
## 
## #histogram:
## hist(iris$Sepal.Length)
## 
## # plot3d (need internet to install the 'rgl' package once - do this with install.packages('rgl'))
## require(rgl)
## speciescolor <- as.numeric(iris$Species) ## extract numeric version of factor for this function
## plot3d(x = iris$Sepal.Length, y = iris$Sepal.Width, z = iris$Petal.Length, col = speciescolor)
## 
## # par() contains many parameters; use Google to learn about them
## # There are 8 colors that can be used by using a number; the rest you can use by their names:
## plot(1:40, col = 1:40) ## same 8 colors repeated
## colors() ## shows all the colors with names
## plot(1:4, col = c("salmon1", "steelblue", "paleturquoise", "peachpuff"), pch = 20, cex = 2)


###################################################
###################################################
## pdf(file = "iris_plot.pdf") #  open the graphics device
## plot(Sepal.Length ~ Sepal.Width, data = iris)
## ## add anything else you want in your plots, and when you are done, use:
## dev.off() # close the graphics device


###################################################
###################################################
## par(mfrow=c(3, 2))


###################################################
###################################################
library(lattice)
xyplot(Sepal.Width ~ Sepal.Length | Species, data = iris)


###################################################
###################################################
library(ggplot2)
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + 
  facet_grid(facets = ~ Species) + geom_point()


### R code from vignette source '/sfs/u/andreass/Dokumente/GIT/R-Intro/material/Introduction/tests.Rnw'

###################################################
###################################################
options(width = 75, digits = 5)


###################################################
###################################################
testdata <- iris[iris$Species != "setosa", c("Sepal.Length", "Species")]
testdata$Species <- droplevels(testdata$Species)
str(testdata) ## prepare and check data


###################################################
###################################################
versi.id <- testdata$Species == "versicolor"
par(mfrow=c(1,2))
qqnorm(testdata$Sepal.Length[versi.id]); qqline(testdata$Sepal.Length[versi.id]) # normality assumption?
qqnorm(testdata$Sepal.Length[!versi.id]); qqline(testdata$Sepal.Length[!versi.id]) # normality assumption?


###################################################
###################################################
versi.id <- testdata$Species == "versicolor"
t.test(x = testdata$Sepal.Length[versi.id], 
       y = testdata$Sepal.Length[!versi.id], 
       var.equal = TRUE )


###################################################
###################################################
## par(mfrow=c(1,2))
## qqnorm(testdata$Sepal.Length[versi.id]); qqline(testdata$Sepal.Length[versi.id]) # normality assumption?
## qqnorm(testdata$Sepal.Length[!versi.id]); qqline(testdata$Sepal.Length[!versi.id]) # normality assumption?


###################################################
###################################################
boxplot(testdata$Sepal.Length ~ testdata$Species)


###################################################
###################################################
versi.id <- testdata$Species == "versicolor"
wilcox.test(x = testdata$Sepal.Length[versi.id], 
            y = testdata$Sepal.Length[!versi.id])


###################################################
###################################################
url <- "http://stat.ethz.ch/Teaching/Datasets/edu.txt"
d.edu <- read.table(url, header = TRUE)


###################################################
###################################################
table(d.edu[, "Married"])


###################################################
###################################################
table(d.edu[, "Education"], d.edu[, "Married"])


###################################################
###################################################
chisq.test(d.edu[, "Education"], d.edu[, "Married"])


### R code from vignette source '/sfs/u/andreass/Dokumente/GIT/R-Intro/material/Introduction/correlation.Rnw'

###################################################
###################################################
options(width = 75, digits = 5)


###################################################
###################################################
url <- "http://stat.ethz.ch/Teaching/Datasets/basischOhneNA.dat"
d.basisch <- read.table(url, header = TRUE)


###################################################
###################################################
str(d.basisch)


###################################################
###################################################
cor(d.basisch$ph, d.basisch$height) 


###################################################
###################################################
plot(d.basisch$ph, d.basisch$height)


###################################################
###################################################
## # The 'cor' function has several correlation coefficients to choose from:
## cor(d.basisch$ph, d.basisch$height, method = "spearman")
## cor(d.basisch$ph, d.basisch$height, method = "kendall")


### R code from vignette source '/sfs/u/andreass/Dokumente/GIT/R-Intro/material/Introduction/regression.Rnw'

###################################################
###################################################
options(width=75)
url <- "http://stat.ethz.ch/Teaching/Datasets/basischOhneNA.dat"
d.basisch <- read.table(url, header=TRUE)


###################################################
###################################################
fit <- lm(formula = height ~ ph, data = d.basisch)


###################################################
###################################################
summary(fit)


###################################################
###################################################
plot(d.basisch$ph, d.basisch$height)
abline(fit)


###################################################
###################################################
## par(mfrow = c(2, 2))
## plot(fit)


###################################################
###################################################
par(mfrow = c(1,2))
plot(fit$fitted,fit$resid)    # Tukey-Anscombe
qqnorm(fit$resid)   # Quantil-Quantil plot
qqline(fit$resid)   # adds the diagonal line


###################################################
###################################################
fitm <- lm(height ~  ph + l.sar, data = d.basisch)


###################################################
###################################################
summary(fitm)


###################################################
###################################################
## plot(fitm)


###################################################
###################################################
## plot(d.basisch$ph, fitm$resid)
## plot(d.basisch$l.sar, fitm$resid)


