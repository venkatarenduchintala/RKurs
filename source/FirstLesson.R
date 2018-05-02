#Day 01 - 02.05.2018

2+2
3*3
x<-3
y <- x^2
print (y)

#Vectors - combine some numbers
c(2,5,6,3,8)
v <- c(2,5,6,3,8)
mean(v)
sd(v)
sum(v)
m_v <- mean(v)

#warning


#character vector
cv <- c("urs", "hannes", "Emma")

length(cv)
length(v)

#boolean or logical vector

c(TRUE, FALSE)
bv <- c(TRUE, FALSE)

#Short form to create vectors
1:5 #creates a vector from 1 to 5
5:1 #creates a vector from 5 to 1

(1:5) > 3 #gives a logical vector verifying if the numbers are greater than 3

(1:5) >2 & (1:5) < 4 #give me a logical vector with values greater than 2 & less than 4

#calculus on numerical vectors
c(1,2) * c(3,2)

c(1,2) %*% c(3,2) #matrix multiplication

#mixing of types
c(2, TRUE, "hello") #R converts this verctor into a character vector ... so be careful when you have a mixed data.. you need to clean it prior

#matrix
m1 <- matrix(6:1, ncol=3, nrow=2) #by default fills.. column wise
m2 <- matrix(6:1, ncol=3, nrow=2, byrow = TRUE)

dim(m1)
length(m1)

#combining vectors into matrices
x <- c(1.2, 2.6, 4.3)
y <- c(2.6, 7.4, 4.9)

m3 <- rbind(x,y) #row bind
m4 <- cbind(x,y) #column bind

#element wise multiplication 
m1 * m2

m1 %*% t(m2)


#Data frames - must have the same length of each of the observation (row)
df <- data.frame(Name = c("Ich", "Du", "Er/Sie"), 
                 Geneder = as.factor(c(0, 1,1)),
                 Age = c(21, 47, 33))

df
str(df)

#help 
?str
?mean
?matrix

#create numeric vectors
?rep #rep replicates the values in x.
?seq 

#Import Data using script

setwd(dir = "c:/dev/RKurs/")
getwd()
d.sport <- read.csv(file = "./data/sport.csv", header = TRUE, row.names = "X")
View(d.sport)

head(d.sport, 10)
tail(d.sport)


#Importing data using URL
url <- 'http://stat.ethz.ch/Teaching/Datasets/WBL/sport.dat'
d.sport <- read.table(url, header = TRUE)
str(d.sport)


#Writing Data
getwd()
write.table(d.sport, file = "./data/sport.txt", sep = ",")


#Indexing
kugel <- d.sport$kugel
kugel[3]
kugel[c(2,4,7)]
kugel[-2]
kugel[-c(2,4,7)]
kugel[kugel > 15]
kugel[] > 15
summary (kugel)

d.sport
participants <- row.names(d.sport)
participants[4]


#extract data from a dataframe
d.sport[2,3]
d.sport[2,]
d.sport[,3]
d.sport[-2,] #removes the second row

d.sport['FRITZ',] #prints all values for FRITZ row

d.sport[c('FRITZ', 'NOOL'), ] #all columns of FRITZ and NOOL
d.sport[, c('kugel', 'speer')]

d.sport[, -c('kugel', 'speer')] #Error - characters and minus sign will not work

d.sport[, -c(2,6)]

d.sport[d.sport$kugel >15, ]


#Quick quiz
d.sport[,]
d.sport[1:10, ]
d.sport[-c(1,3,7)]
d.sport[, 2:3]


#functions in R
mean(d.sport$kugel)
dim(d.sport)
nrow(d.sport)
ncol(d.sport)
str(d.sport)

?mean
mean(d.sport$kugel)
mean()
mean(x=d.sport$kugel, trim = 0.1, na.rm = TRUE)
mean(trim=0.1, x=d.sport$kugel, na.rm=TRUE)
mean(0.1, d.sport$kugel, TRUE)
mean(d.sport$kugel, TRUE, trim=0.1)
mean(d.sport$kugel, TRUE, trim=0.1)

?quantile
quantile(x=d.sport$kugel, probs=c(0.1, 0.9))

#Installing packages
install.packages('MASS')
require('MASS')
