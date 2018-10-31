# Web scraping with R

install.packages('rvest')

demo(package='rvest')

library(rvest)
lego_movie <- read_html("http://www.imdb.com/title/tt1490017/")
