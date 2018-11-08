install.packages('ggplot2')
library(ggplot2)
library(movies)
df <- movies <- movies[sample(nrow(movies), 1000), ]

head(mtcars)

df <- mtcars <- mtcars[sample(nrow(mtcars), 1000), ]

library(ggplot2)
df <- movies

qplot(x=year, y=rating, data = df, geom = "density2d")

pl <- ggplot(movies,aes(x = year,y=rating))

#2D Bin Chart
pl + geom_bin2d()


# Control bin sizes
pl + geom_bin2d(binwidth=c(2,1))

#2D Density Plot
pl + geom_density2d()

#2d Hex Plot
pl + geom_hex()

pl + geom_hex() + scale_fill_gradient(high='red',low='blue')
