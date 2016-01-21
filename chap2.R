"
Notes:
- vectors are immutable ? 
"

# Vectors

x = c(1,2,3)
x

# Creating sequence
y = seq(from=2, length=3, by=4)
y
?seq # ? is use for documentation
x + y # vector addition suppose vectors of the same length
x / y
x ^ y
x[2:3]
x[-2] # removing 2nd element
x[-c(1,2)] # removing a sub vector

# Matrices

z = matrix(seq(1,12), 4, 3)
z
z[1,2]
z[(3:4), (2:3)]
z[,1] # the first column as a vector
z[,1, drop=FALSE] # and now as a matrix
dim(z)

# UTils

ls() # variables in the current environment
rm(y) # remove y from the env
ls()

# Random data and graphics

x = runif(50) # random variables, uniform distribution
y = rnorm(50) # now with according to a normal distribution
plot(x, y)
plot(x, y, xlab="Random uniform", ylab = "Random normal", pch = "x", col = "blue")
par(mfrow = c(2, 1)) # We want to plot two graphs
plot(x, y)
hist(y)
par(mfrow = c(1,1))

# Reading data

linkage = read.csv("~/code/spark/advanced-analytics-with-spark/chapter1/linkage/block_1.csv")
names(linkage) # columns
dim(linkage)
class(linkage) # a data.frame object
summary(linkage)
plot(linkage$cmp_by, linkage$cmp_sex) # nonsense in this case
attach(linkage) # making variables of the dataset available in memory
search() # list what is in the env
cmp_bd
