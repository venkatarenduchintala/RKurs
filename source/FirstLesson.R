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
