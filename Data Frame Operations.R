# Data Frame Operations

# Creating data frames

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

# Importing and Exporting data

write.csv(df,file = "saved_df.csv")
read.csv('saved_df.csv')

# Getting information about dataframe
df
nrow(df)
ncol(df)
colnames(df)
rownames(df)

summary(df) # statistcal summary of the data frame

str(df) # returns the structure of the data frame


