#Creating a Matrix

1:10
v <- 1:10

v

matrix(v)

matrix(v,nrow = 2)

matrix(1:12,byrow = FALSE, nrow = 4)

matrix(1:12,byrow = TRUE,nrow = 3)

matrix(1:12,byrow = TRUE,nrow = 4)


goog <- c(450,451,452,445,462)
msft <- c(230,231,232,233,220)

stocks <- c(goog,msft)

print(stocks)


stocks.matrix <- matrix(stocks, byrow = T,nrow = 2)

print(stocks.matrix)

Days <- c("Mon","Tue","Wed","Thu","Fri")
St.names <- c("Goog","Msft")

colnames(stocks.matrix) <- Days
rownames(stocks.matrix) <- St.names

print(stocks.matrix) 


#Matrix Arithmetic

mat <- matrix(1:25,byrow = T,nrow = 5)
print(mat)

mat * 2

mat / 2

mat ^ 2

1/mat

mat > 15

mat + mat

#Elementwise matrix multiplication

mat * mat

#Actual matrix multiplication

mat %*% mat