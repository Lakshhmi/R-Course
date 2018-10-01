# vectors Matrices and Lists
v <- c(1,2,3)
m <- matrix(1:10,nrow = 2)
df <- mtcars

class(v)

class(m)

class(df)

mylist <- list(v,m)
mylist

mynamedlist <- list(Vec = v, Mat = m)
mynamedlist


mynamedlist$Mat # or mynamedlist[[2]]

mylist[1]
mynamedlist[1]

mynamedlist['Mat']

class(mynamedlist$Mat) 

class(mynamedlist['Mat'])

double.list <- list(mynamedlist,mynamedlist)
double.list

str(mynamedlist)

class(mynamedlist)
class(df)