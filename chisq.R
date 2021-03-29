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
# library(ggcorrplot)


## Read in the data
df = matrix(c(77, 248, 102, 248,
                      43, 251, 35, 251,
                      29, 235, 33, 235,
                      38, 222, 37, 222), 
                    ncol = 2, 
                    byrow = T)
colnames(df) = c('Unique', 'Shared')
rownames(df) = c('Galtabol Morphology', 'Galtabol Resource use', 
                  'Svinavatn Morphology', 'Svinavatn Resource use', 
                         'Thingvallavatn1 Morphology', 'Thingvallavatn1 Resource use', 
                         'Thingvallavatn2 Morphology', 'Thingvallavatn2 Resource use')

df = as.table(df)

test = chisq.test(df)

# test$observed
# test$expected


cors = corrplot(test$residuals,
         method = 'color',
         tl.col = 'black',
         tl.offset = 1,
         # tl.pos = 'n',
         # tl.srt = 0,
         # type = 'upper',
         is.cor = FALSE, 
         t1.col = 'black')
