
Gal = matrix(c(77, 248, 102, 248), 
             ncol = 2, 
             byrow = T) 
colnames(Gal) = c('Unique', 'Shared')
rownames(Gal) = c('Trait1', 'Trait2')

Gal = as.table(Gal)

test = chisq.test(Gal)

test$observed
test$expected




svin = matrix(c(43, 251, 35, 251), 
             ncol = 2, 
             byrow = T) 
colnames(svin) = c('Unique', 'Shared')
rownames(svin) = c('Trait1', 'Trait2')

svin = as.table(svin)

test = chisq.test(svin)

test$observed
test$expected



thing1 = matrix(c(29, 235, 33, 235), 
              ncol = 2, 
              byrow = T) 
colnames(thing1) = c('Unique', 'Shared')
rownames(thing1) = c('Trait1', 'Trait2')

thing1 = as.table(thing1)

test = chisq.test(thing1)

test$observed
test$expected


thing2 = matrix(c(38, 222, 37, 222), 
                ncol = 2, 
                byrow = T) 
colnames(thing2) = c('Unique', 'Shared')
rownames(thing2) = c('Trait1', 'Trait2')

thing2 = as.table(thing2)

test = chisq.test(thing2)

test$observed
test$expected




combo_test = matrix(c(77, 248, 102, 248,
                      43, 251, 35, 251,
                      29, 235, 33, 235,
                      38, 222, 37, 222), 
                    ncol = 2, 
                    byrow = T)
colnames(combo_test) = c('Unique', 'Shared')
rownames(combo_test) = c('GT1', 'GT2', 
                         'ST1', 'ST2', 
                         'T1T1', 'T1T2', 
                         'T2T1', 'T2T2')

combo_test = as.table(combo_test)

combo_test = chisq.test(combo_test)

combo_test$observed
combo_test$expected

library(corrplot)


corrplot(combo_test$residuals, 
         is.cor = FALSE)
