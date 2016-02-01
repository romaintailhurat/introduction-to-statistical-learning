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
fit2 = lm(medv~lstat+age, data = Boston)
summary(fit2) # age is significant but less than lstat in this model
fit3 = lm(medv~., data = Boston) # use all the other variables as predictors
summary(fit3) # here, age is no more a significant predictor
par(mfrow=c(2, 2)) # plotting a two by two layouts
plot(fit3)
fit4 =  update(fit3, ~.-age-indus) # updating the previous model
summary(fit4)


### Non linear terms and interactions

