muestra <- round(rnorm(20, mean=55, sd=12))

mx = round(mean(muestra),2)
sd1 = round(sd(muestra),2)

x = seq(mx-5*sd1, mx + 5*sd1, .1)

h = hist(muestra, xlim=c(mx-6*sd1, mx + 6*sd1))

print(c(mx,sd1))

y = dnorm(x, mean=mx, sd=sd1)
y = y*max(h$count)/max(y)
points(x,y, type='l', col='red')
points(c(55, 55),c(0, max(y)), type='l', col='red', lwd=5)
points(c(mx, mx),c(0, max(y)), type='l', col='blue', lwd=3)