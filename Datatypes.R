#Vectors

#Logical
vtrl =c(TRUE,FALSE)
class(vtrl)

#Numeric
vtrl1 =c(15,85.2344,9999)
class(vtrl1)

#Integer
vtrl2 =c(38L,20L,12L)
class(vtrl2)
vtrl2

#Matrix
mtr = matrix(c(6:30), byrow = TRUE,nrow = 5, ncol = 5)

#Array
arr = array(c(1:9),dim = c(3,3,2,2))

arr1 = array(c(1:24),dim =c(4,3,2))

#List
vct1 = c(3.14,79,04,19)
vct2 = c("Hi","How","are","you?","True")

mylist = list(vct1,vct2,"False")

#Data Frame

Index =c(1:5)
Name = c("Adam","Bill","Carter","Deny","Eshan")
Age = c(13,7,39,41,40)

data.frame(Index,Name,Age)

data.frame(airquality)

data.frame(mtcars)

#Operators
print(5^2) # Exponent 
print(5%%2) #Modulus - gives reminder
print(5%/%2) #Floor Division - gives quotant

#Conditional Operators
var1=5
var2=35
if((var1+var2)>100){
  print(">100")
}else if((var1+var2)<50){
  print("<50")}else
print("else")
  
#Loops
#repeat

var1=5
repeat{
  print(var1)
  var1<-var1+2
  if(var1>21){
    break
  }
}

#while
var1=5
while(var1<=21){
  print(var1)
  var1=var1+2
}

#for

for (i in c(1:25)) {
  print(i)
  i<-i+1
}

#Functions
#Fibonocci series

fibo <- function(a){
  var1=1
  var2=2
  print(var1)
  print(var2)
  for(i in 1:a){
    var3=var1+var2
    print(var3)
    var1=var2
    var2=var3
  }
}

fibo(10)                 