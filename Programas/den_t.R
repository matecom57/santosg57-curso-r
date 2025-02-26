x <- seq(-3,3,.1)
y <- dt(x, 5)

par(mfrow=c(2,2))
plot(x,y, type='l', main='Densidad Normal')

r = rt(100, 5)
plot(r, main='Números Aleatorios')

p = pt(x, 5)

plot(x, p , type='l', main='Frecuencia Acumulada')

p <- seq(0,1, .001)
q <- qt(p, 5)

plot(p, q, type='l')

