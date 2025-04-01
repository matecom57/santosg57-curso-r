x = 1:12
y = x + rnorm(12,sd=2)

plot(x,y,pch=16)

ya = lm(y ~ x)

co = as.numeric(coefficients(ya))

print(co)

abline(ya, lwd=3, col='blue')

xx = c(x[3],x[6], x[9])
yy = c(y[3],y[6], y[9])

k=3
for (i in 1:3){
   x1 = xx[i]
   y1 = yy[i]
   x2 = x1
   y2 = co[1] + co[2]*x2
   d = (y1+y2)/2
   points(c(x1, x2), c(y1, y2), type='l')
   tt = paste('dis-',k,sep='')
   text(x1,d,tt,cex=.7,pos=4)
   k = k+2
}


