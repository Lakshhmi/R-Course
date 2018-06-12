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


stock.prices <- c(23,27,23,21,34)
stock.prices

names(stock.prices) <- c("Mon","Tue","Wed","Thu","Fri")

mean(stock.prices)

over.23 <- stock.prices>23

stock.prices[over.23]


max(stock.prices)

max.prices <- stock.prices==max(stock.prices)
max.prices

stock.prices[max.prices]

#Matrix Operations
colSums(stocks.matrix)

rowSums(stocks.matrix)

rowMeans(stocks.matrix)

FB <- c(110,111,112,120,125)
tech.stocks <- rbind(stocks.matrix,FB)
tech.stocks

avg <- rowMeans(tech.stocks)
avg

tech.stocks <- cbind(tech.stocks,avg)
tech.stocks

#Matrix selection and indexing

mat <- matrix(1:50, byrow = TRUE, nrow = 5, ncol = 10)
mat

mat[1,]

mat[,1]

mat[1:3,]
