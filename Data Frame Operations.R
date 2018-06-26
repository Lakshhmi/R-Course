# Data Frame Operations

# 1. Creating data frames

empty <- data.frame() # It creates empty data frame
empty

c1 <- 1:10
c1

letters 

c2 <- letters
c2 <- letters[1:10]
c2

c1
c2

df <- data.frame(col.name.1 = c1, col.name.2 = c2)
df

# 2. Importing and Exporting data

write.csv(df,file = "saved_df.csv")
read.csv('saved_df.csv')

# 3. Getting information about dataframe
df
nrow(df)
ncol(df)
colnames(df)
rownames(df)

summary(df) # statistcal summary of the data frame

str(df) # returns the structure of the data frame


# 4. Referencing Cells

df[[6,2]] # Call single cell value


df[[5,'col.name.2']]

# Call single cell and assign a value
df[[2,'col.name.1']] <- 99
df

# 5. Referencing Rows

df[1,]

# 6. Referencing Columns

mtcars # Built-in Data frame in R
str(mtcars)       # returns structure
colnames(mtcars)  # column names
head(mtcars)      # first 6 rows
tail(mtcars)      # last 6 rows
dim(mtcars)       # get number of rows and columns

# 4 different ways to get a vector of columns
mtcars[,'drat']
mtcars$drat
mtcars[,5]
mtcars[['drat']]  # returns vector
mtcars['drat']    # returns data frame

mtcars[c('mpg','drat')] # Should pass a vector to get multiple columns

head(mtcars[c('mpg','drat')])

head(mtcars,3) # get first 3 rows from the data frame

sapply(mtcars,mean,na.rm=TRUE) # get mean value

# Adding new row

df2 <- data.frame(col.name.1=2000,col.name.2 = 'new')
df2

dfnew <- rbind(df,df2)
dfnew 


df$newcol <- 2*df$col.name.1
df

# Setting column names

colnames(df)
colnames(df) <- c("One","Two",'Three') # rename all the column name at once
df


colnames(df)[1] <- "New One"
df


# Selecting multiple rows

df[2:7,2]


df[-2,] # Select all rows but not 2nd

# Selecting rows with conditions

mtcars[mtcars$mpg >30,]
mtcars[mtcars$mpg > 30 & mtcars$hp >65,]


mtcars[ (mtcars$mpg >25) & (mtcars$cyl == 4), c('mpg','hp','cyl','gear')]


subset(mtcars, mpg >30 & hp > 65)

# Selecting multiple columns

mtcars[,c(1,2,3)]
mtcars[,c('mpg','hp','cyl')]
mtcars[,c('mpg','hp','cyl')][1:7,]

# Dealing with missing data

is.na(mtcars)
any(is.na(df))
any(is.na(mtcars))

any(is.na(mtcars$mpg))
mtcars$mpg[is.na(mtcars$mpg)] <- mean(mtcars$mpg)


