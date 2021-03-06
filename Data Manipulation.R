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

#Let's create some fake data that needs to be cleaned using tidyr

comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min=0, max=100)
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)

df <- data.frame(comp=comp,year=yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)

df


#Gather() and Spread()
# Using Pipe Operator

head(df %>% gather(Quarter,Revenue,Qtr1:Qtr4))

# With just the function
head(gather(df,Quarter,Revenue,Qtr1:Qtr4))

stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)
stocks

stocksm <- stocks %>% gather(stock, price, -time)
stocksm %>% spread(stock, price)

stocksm %>% spread(time, price)


# Separate and Unite

#Separate
df <- data.frame(x = c(NA, "a.x", "b.y", "c.z"))
df

df %>% separate(x, c("ABC", "XYZ"))

# Unite()
head(mtcars)

unite_(mtcars, "vs.am", c("vs","am"),sep = '.')

# Separate is the complement of unite
mtcars %>%
  unite(vs_am, vs, am) %>%
  separate(vs_am, c("vs", "am"))