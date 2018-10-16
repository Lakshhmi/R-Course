#Functions Exercises

# Check if the given no is in the vector
num_check <- function(num,vec){
  i=1
  for(i in vec){
    if(num==i){
      result <- TRUE
      print(i)
      break
    }else{
      print(i)
      result <- FALSE
    } 
  }
  return(result)
  
}

num_check(3,c(1,2,3))



num_count <- function(num,vec){
  i=1
  my.count <- 0
  for(i in vec){
    if(num==i){
      my.count <- my.count + 1
    }
  }
  return(my.count)
}

num_count(2,c(2,3,4,5,2,3,2,7,2,9,2,2,2,2))


#print Vectors
vec1 <- c(2,3,4,5,2,3,2,7,2,9)
for(i in vec1){
  print(paste(vec1[i], "i=",i))
}
