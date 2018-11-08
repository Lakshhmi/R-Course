install.packages('ggplot2')
library(ggplot2)
library(movies)
df <- movies <- movies[sample(nrow(movies), 1000), ]

head(mtcars)

df <- mtcars <- mtcars[sample(nrow(mtcars), 1000), ]

library(ggplot2)
df <- movies

qplot(x=year, y=rating, data = df, geom = "density2d")