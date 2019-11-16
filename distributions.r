#imports
library(stats)
library(ggplot2)
#Generate random numbers
b = rbinom(1000, size=10, prob=0.3)#Binomial
p = rpois(1000, lambda=2)#Poisson
e = rexp(1000, rate=1.5)#Exponential
u = runif(1000, min=0, max=10)#Uniform
n = rnorm(1000, mean=0, sd=1)#Normal
g = rgamma(1000, shape=3, scale=0.5)#gamma
w = rweibull(1000, shape=0.5, scale=1)#weibull
B = rbeta(1000, shape1=1, shape2=0.5)#beta
c = rchisq(1000, df=15)#Chi-sq
ln = rlogis(1000, location=0, scale=1)#Logistic-Normal
ca = rcauchy(1000, location=0, scale=1)#Cauchy

# #Density curves
# plot(density(b),main='Binomial',xlab='x')
# plot(density(p),main='Poisson',xlab='x')
# plot(density(e),main='Exponential',xlab='x')
# plot(density(u),main='Uniform',xlab='x')
# plot(density(n),main='Normal',xlab='x')
# plot(density(g),main='Gamma',xlab='x')
# plot(density(w),main='Weibull',xlab='x')
# plot(density(B),main='Beta',xlab='x')
# plot(density(c),main='Chi-Square',xlab='x')
# plot(density(ln),main='Logistic-Normal',xlab='x')
# plot(density(ca),main='Cauchy',xlab='x')

#Histogram
hist(b,prob=TRUE,main='Binomial')
lines(density(b),lty="dotted",col="red")
hist(p,prob=TRUE,main='Poisson')
lines(density(p),lty="dotted",col="red")
hist(e,prob=TRUE,main='Exponential')
lines(density(e),lty="dotted",col="red")
hist(u,prob=TRUE,main='Uniform')
lines(density(u),lty="dotted",col="red")
hist(n,prob=TRUE,main='Normal')
lines(density(n),lty="dotted",col="red")
hist(g,prob=TRUE,main='Gamma')
lines(density(g),lty="dotted",col="red")
hist(w,prob=TRUE,main='Weibull')
lines(density(w),lty="dotted",col="red")
hist(B,prob=TRUE,main='Beta')
lines(density(B),lty="dotted",col="red")
hist(c,prob=TRUE,main='Chi-Square')
lines(density(c),lty="dotted",col="red")
hist(ln,prob=TRUE,main='Logistic-Normal')
lines(density(ln),lty="dotted",col="red")
hist(ca,prob=TRUE,main='Cauchy')
lines(density(ca),lty="dotted",col="red")

#Summary
summary(b)
summary(p)
summary(e)
summary(u)
summary(n)
summary(g)
summary(w)
summary(B)
summary(c)
summary(ln)
summary(ca)

#Box-Plot
boxplot(b,main='Binomial')
boxplot(p,main='Poisson')
boxplot(e,main='Exponential')
boxplot(u,main='Uniform')
boxplot(n,main='Normal')
boxplot(g,main='Gamma')
boxplot(w,main='Weibull')
boxplot(B,main='Beta')
boxplot(c,main='Chi-Square')
boxplot(ln,main='Logistic-Normal')
boxplot(ca,main='Cauchy')

  