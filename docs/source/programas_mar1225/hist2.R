x = round(rnorm(50, mean=55, sd=7))
y = round(rnorm(30, mean=67, sd=4))

x0 = 60~x = round(rnorm(50, mean=55, sd=7))
y = round(rnorm(30, mean=67, sd=4))

x0 = 62
x = x[x < x0]
#y = y[y > x0] 
z = c(x,y)

hist(z)

bb = seq(min(z), max(x)+2, 2)
h <- hist(x, breaks=bb, xlim=c(30, 70))

typeof(h)
class(h)

names(h)

points(h$mids, h$counts, type='l', lwd=3, col='red')

points(c(h$mids[1] - (h$mids[2]-h$mids[1]), h$mids[1]), c(0, h$counts[1]), type='l', lwd=3, col='red')
 
n = length(h$counts)

points(c(h$mids[n], h$mids[n] + (h$mids[2]-h$mids[1])), c(h$counts[n], 0), type='l', lwd=3, col='red')
