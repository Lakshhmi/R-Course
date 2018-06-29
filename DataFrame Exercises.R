# Data Frame Exercises

#Age,Weight,Sex

v1 <- c('Sam',22,150,'M')

v1
Name <- c('Sam','Frank','Amy')
Age <- c(22,25,26)
Weight <- c(150,165,120)
Sex <- c('M','M','F')

#dfPerson <- data.frame(Name,Age,Weight,Sex)
dfPerson <- data.frame(row.names=Name,Age,Weight,Sex)
dfPerson



is.data.frame(mtcars)


mat <- matrix(1:25,nrow = 5)
as.data.frame(mat)


df <- mtcars
df

head(df)

mean(df$mpg)

df[df$cyl == 6,]
#or
subset(df,cyl == 6)


df[c('am','gear','carb')]  # or df[,c('am','gear','carb')]

df$performance <- df$hp/df$wt

head(df)

df$performance <- round(df$performance,digits = 2)

head(df,3)

mean(df[(df$hp >100) & (df$wt >2.5),]$mpg)

print(subset(df,hp>100 & wt>2.5)$mpg)

subset(df,hp>100 & wt>2.5)$mpg

mean(subset(df,hp>100 & wt>2.5)$mpg)


df['Hornet Sportabout',]$mpg
