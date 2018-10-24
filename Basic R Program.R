#Logical Operators

x <- 10

x<20
x>5

(x<20) & (x>5)

(x==10) | (x==100)

!(x==10)

df <- mtcars
head(df)
df$mpg > 20
df[df$mpg > 20,]

df[df$mpg > 20, 'mpg']

df[df$mpg > 20, c('mpg','drat')]

subset(df, mpg>20)

subset(df, mpg>20,c('mpg','hp'))

df[(df$mpg >20) & (df$hp > 100),]


# If, else and elseif statement

x<-13
if (x==10){
  print('x is equal to 10')
}else if(x==12){
  print('x is equal to 12')
    }else
      print('x is not equal to 10 or 12')

# Conditional Statement Exercises
x <- 13
if (x%%2 == 0){paste(x , 'is a Even Number')}else
  paste(x, 'is a Odd Number')


x <- matrix(1:25,nrow = 5,ncol = 5,byrow = T)
x

if (is.matrix(x) == T){
  print('Is a Matrix')
}else print('Is not a Matrix')

x <- c(3,7,1)

if(x[1] > x[2]){
  first <- x[1]
  second <- x[2]
}else if(x[2] > x[1]){
  first <- x[2]
  second <- x[1]
}
if(x[3]>first & x[3] > second){
  first <- x[3]
  second <- first
  third <- second
}else if(x[3] < first & x[3] < second){
  third <- x[3]
}else{
  third <- second
  second <- x[3]
}
print(paste(first,second,third))
#####################

temp <- 30

if (temp > 80){
  print("Hot outside!")
} else if(temp<80 & temp>50){
  print('Nice outside!')
} else if(temp <50 & temp > 32){
  print("Its cooler outside!")
} else{
  print("Its really cold outside!")
}

temp <- 75

if (temp > 80){
  print("Hot outside!")
} else if(temp<80 & temp>50){
  print('Nice outside!')
} else if(temp <50 & temp > 32){
  print("Its cooler outside!")
} else{
  print("Its really cold outside!")
}

# Items sold that day
ham <- 10
cheese <- 10

# Report to HQ
report <- 'blank'


if(ham >= 10 & cheese >= 10){
  report <- "Strong sales of both items"
  
}else if(ham == 0 & cheese == 0){
  report <- "Nothing sold!"
}else{
  report <- 'We had some sales'
}
print(report)





#####################
# While Loops

x <- 0
while(x<10){
  print(paste0('X is :',x))
  x <- x+1
  if(x==10){
    print("X is now 10 break the loop")
    break
    print("Woo i printed too")
  }
}

x <- 0
while(x<10){
  print(paste0('X is :',x))
  x <- x+1
  if(x==5){
    print("X is now 5 break the loop")
    break
  }
}


# For Loop
v <- c(1,2,3,4,5)
for (temp.var in v) {
  #print(temp.var)
  results <- temp.var+1
  print(results)
}

my.list <- list(c(1,2,3),mtcars,12)
for(item in my.list){
  print(item)
}

mat <- matrix(1:25,nrow = 5)
for(num in mat){
  print(num)
}

1:nrow(mat)

for(row in 1:nrow(mat)){
  for(col in 1:ncol(mat)){
    print(paste('The element at row',row,'and col',col,'is',mat[row,col]))
  }
}

################
#Functions
name_of_func <- function(input1,input2,input3=45){
  # Code execute
  return()
}

hello <- function(name){
  paste("Hello!",name)
}

hello('Lakshmi')


add_sum <- function(num1,num2){
  my_sum <- num1+num2
  return(my_sum)
}

print(add_sum(3,5))


times5 <- function(num3){
  my.result <- num3*5
  return(my.result)
}

print(times5(20))

#Global Variable
v <- "Global variable"
stuff <- "Global stuff"

fun <- function(){
  print(v)
  stuff <- "Reassign Global stuff inside the function fun"
  print(stuff)
}

fun()
print(stuff)


