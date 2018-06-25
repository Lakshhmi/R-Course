# Explore builtin dataframes
state.x77

USPersonalExpenditure

women

data()

WorldPhones

head(state.x77)
tail(state.x77)

str(state.x77)
summary((state.x77))

#Create weather dataframe

days <- c('Mon','Tue','Wed','Thur','Fri')
temp <- c(78.4,83,67,74,80.3)
rain <- c(F,F,T,T,F)

df <- data.frame(days,temp,rain)
df

str(df)

summary(df)

df[1,]
df[,1]
df[,'rain']

df[1:5,1:2]

df[1:5,c('days','rain')]

df$days # returns vector
df['days'] # returns dataframe format with column and index

df$temp

df$rain


subset(df,subset = rain==TRUE)

subset(df,subset = temp>80)

sorted.temp <- order(df['temp']) # Ascending order
sorted.temp

df[sorted.temp,]

order(-df$temp)

desc.temp <- order(-df$temp) # Descending order

df[desc.temp,]


