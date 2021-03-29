##################################################################
## Running a chisquared test to determine if proportions are singnificant
##
## Matt Brachmann (PhDMattyB)
##
## 2021-03-29
##
##################################################################

## Load the data manipulation work horse
library(tidyverse)
library(corrplot)

## Load other packages 


## Read in the data
df = matrix(c(77, 248, 102, 248,
                      43, 251, 35, 251,
                      29, 235, 33, 235,
                      38, 222, 37, 222), 
                    ncol = 2, 
                    byrow = T)
colnames(df) = c('Unique', 'Shared')
rownames(df) = c('GT1', 'GT2', 
                         'ST1', 'ST2', 
                         'T1T1', 'T1T2', 
                         'T2T1', 'T2T2')

df = as.table(df)

test = chisq.test(df)

# test$observed
# test$expected


corrplot(test$residuals, 
         is.cor = FALSE)
