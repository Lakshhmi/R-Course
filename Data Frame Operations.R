# Data Frame Operations

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

write.csv(df,file = "saved_df.csv")
read.csv('saved_df.csv')


df
nrow(df)
ncol(df)
colnames(df)
rownames(df)

summary(df)
str(df)


