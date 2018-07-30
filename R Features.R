#Built-in R Features
#seq() - Create sequences
seq(0,10,by = 2) 

seq(0,100,by = 10)

seq(0,24,by=2)

#sort() - Sort a vector
v <- c(1,4,2,6,7,3,12,45)
sort(v)
sort(v,decreasing = TRUE)

cv <- c('b','c','a')
sort(cv)

cv <- c('b','C','a','F','A')
sort(cv)


#rev() - reverse elements in onject
rev(v)
rev(cv)

#str() - Shows the structure of an object
str(mtcars)

str(v)
str(cv)

#append() - Merge objects together (works on vectors and lists)

v<- 1:10
v
v1 <- 35:40
v1

append(v,v1)

#Checking Data types # .is

is.vector(v)
is.data.frame(v)
is.data.frame(mtcars)


# .as - convert into another datatype

v
as.list(v)

as.matrix(v)


#Apply

print(sample(x=1:10,1)) # return random number from 1 to 10
print(sample(x=1:100,3)) # return random 3 numbers


v <- c(1:5)
v

addrand <- function(x){
  ran <- sample(1:100,1)
  return(x+ran)
}

print(addrand(10))
print(addrand(15))

result <- lapply(v,addrand)
print(result)


times2 <- function(num){
  return(num*2)
}
times2(4)

result <- sapply(v,times2)
print(result)

#Anonymous Functions

function(num){num*2}


result <- sapply(v,function(num){num*2})

print(result)

#Apply with multiple inputs

v <- 1:5
add_choice <-function(num,choice){
  return(num+choice)
}

print(sapply(v,add_choice,choice=100))

#Math functions with R

#abs() - Computes the absolute value
abs(2)
abs(-2)
v <- c(-2,3,9,-1)
abs(v)


#sum() - returns sum of all the values present in the input
sum(v)

#mean() - computes the arithmetic mean
mean(v)

#round() - rounds values 
round(2.333456)
round(2.333456,digits = 2)
round(2.345743,2)


# Regular Expressions

#grepl - returns boolean value
#grep - returns index locations


text <- "Hi there, do you know who you are voting for?"

grepl("voting",text)
grepl("dog",text)

grepl("do you",text)

v <- c('a','b','c','d','d')
grepl('b',v)

grep('b',v)
grep('d',v)

grepl("hello","hello world")

grep("a",c("a","b"))

#Date and timestamps
