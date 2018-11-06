install.packages('ggplot2')
library(ggplot2)
library(movies)
df <- movies <- movies[sample(nrow(movies), 1000), ]

head(mtcars)

df <- mtcars <- mtcars[sample(nrow(mtcars), 1000), ]