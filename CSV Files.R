write.csv(mtcars,file = "MyExample.CSV") # Write CSV file 

ex <- read.csv("MyExample.CSV")

head(ex)

tail(ex)

class(ex)

##Excel with R

install.packages("readxl")

library(readxl)
excel_sheets('Sample-Data.xlsx')

df <- read_excel('Sample-Data.xlsx',sheet = "Sheet1")

entire.workbook <- lapply(excel_sheets('Sample-Data.xlsx'),read_excel,path="Sample-Data.xlsx")

install.packages('xlsx')

library(xlsx)

head(mtcars)

write.xlsx(mtcars,"output-example.xlsx")


install.packages('rvest')