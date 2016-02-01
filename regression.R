library(MASS)
library(ISLR)

### simple linear regression
names(Boston) # columns or variables of the housing values
?Boston       # in suburbs of Boston
plot(medv~lstat, Boston)
fit1 = lm(medv~lstat, data = Boston)
fit1
summary(fit1)
abline(fit1, col = "red")
names(fit1) #keys in the objects
confint(fit1) #confidence interval
# prediction for three values using the model fit1
# fit : predicted value ; [lwr, upr] : boundaries of the confidence interval
predict(fit1, data.frame(lstat = c(5, 10, 15)), interval = "confidence")

### multiple linear regression

