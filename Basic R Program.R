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