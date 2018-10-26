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


#Select()
head(select(flights,carrier))
head(select(flights,carrier,arr_time))
head(select(flights,carrier,arr_time,month))


#rename() - allows to quickly rename the column

head(rename(flights,airlines_carrier=carrier))


#distinct() - allows to select distinct or unique values in a column or table

distinct(select(flights,carrier))


#mutate()

head(mutate(flights,new_col=arr_delay-dep_delay))

head(mutate(flights,new_col=arr_delay*dep_delay))

#transmute()
head(transmute(flights,new_col=arr_delay*dep_delay))


#summarise()

summarise(flights,avg_air_time=mean(air_time,na.rm = TRUE))

summarise(flights,total_time=sum(air_time,na.rm = TRUE))

#sample_n() - return random number of rows

sample_n(flights,10)

#sample_frac()
sample_frac(flights,0.1)

sample_frac(flights,0.5)

install.packages('tidyr',repos = 'http://cran.us.r-project.org')

library(tidyr)
library(data.table)


