#1.There will be an object called 'iris' in your workspace. In this dataset, 
#what is the mean of 'Sepal.Length' for the species virginica? 
#Please round your answer to the nearest whole number.
library(datasets)
data(iris)
?iris
head(iris,n=10)

#2.How can one calculate the average miles per gallon (mpg) 
#by number of cylinders in the car (cyl)? Select all that apply.
library(datasets)
data(mtcars)
apply(iris[, 1:4], 2, mean)

#3.How can one calculate the average miles per gallon (mpg) 
#by number of cylinders in the car (cyl)? Select all that apply.

with(mtcars, tapply(mpg, cyl, mean))
sapply(split(mtcars$mpg,mtcars$cyl), mean)
tapply(mtcars$mpg,mtcars$cyl, mean)

#4.Continuing with the 'mtcars' dataset from the previous Question,
#what is the absolute difference between the average horsepower 
#of 4-cylinder cars and the average horsepower of 8-cylinder cars?
rd<-tapply(mtcars$hp, mtcars$cyl, mean)
round(abs(rd[3]-rd[1]))

#5.What happens when you next call the 'ls' function?
debug(ls)