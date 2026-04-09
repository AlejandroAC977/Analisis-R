# Estadistica base de los datos
summary(age)
var(age)
sd(age)
sqrt(var(age))

# 
#install.packages("moments")
library(moments)
skewness(age)
kurtosis(age)
