# Data Manipulation
install.packages('dplyr')
install.packages('nycflights13')


library(dplyr)

library(nycflights13)

head(flights)

summary(flights)

# Dplyr built in functions
# filter() and slice()
# arrange()
# select() and rename()
# distinct()
# mutate() and transmute()
# summarise()
# file:///C:/Lakshmi/R-Course/R Programming/Data Manipulation.R

#filter() - Selects subset of arguments in the dataframe


head(filter(flights,month==11,day==3,carrier=='AA'))


#Slice() - allow to select by positions
slice(flights,1:10)

#arrange() - similar to filter but arrange() - order by columns

head(arrange(flights,year,month,day,air_time))


head(arrange(flights,year,month,day,desc(air_time)))
