x = seq(0,5,.01)

y = df(x,1,1)

par(mfrow = c(2,2))
plot(x,y, type='l', col='red', ylim=c(0, 2.5))

y1 = df(x,2,1)

points(x,y1, type='l')


y2 = df(x,5,2)

points(x,y2, type='l', col='blue')


y3 = df(x,10,1)
points(x,y3, type='l', col='green')

y4 = df(x,100,100)
points(x,y4, type='l', col='grey')

x = seq(0,5,.01)

y = pf(x,1,1)

plot(x,y, type='l', col='red', ylim=c(0, 1.1))

y1 = pf(x,2,1)

points(x,y1, type='l')

y2 = pf(x,5,2)

points(x,y2, type='l', col='blue')


y3 = pf(x,10,1)
points(x,y3, type='l', col='green')

y4 = pf(x,100,100)
points(x,y4, type='l', col='grey')
