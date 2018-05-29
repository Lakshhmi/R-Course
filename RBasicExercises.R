# R Basic Exercises
# two to the power of 5
2 ^ 5

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