x <- seq(-3,3, .01)

y <- x^3

plot(x,y, type='l')

x0 = -2
y0 = x0^3

m = 3*x0^2

x1 = x0-.5
y1 = m*(x1-x0) + y0

x2 = x0+.5
y2 = m*(x2-x0) + y0

points(c(x1,x2), c(y1,y2), type='l',lwd=2, col='red')