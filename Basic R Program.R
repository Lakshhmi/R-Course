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
}else if(x[3] < first & x[3] < second){}
