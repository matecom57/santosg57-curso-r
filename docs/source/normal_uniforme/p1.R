pob <- round(rnorm(100, mean=55, sd=12))

print(shapiro.test(pob))

hist(pob, main ='Distribución de una Población Normal')

mp = mean(pob)

points(c(mp, mp), c(0,30), type ='l', lwd=3, col='blue')

sd1 = sd(pob)

ss1 = sum(mp - 2*sd1 < pob & pob < mp + 2*sd1)

cat('porcentaje de medidas de la población de la media a dos desviaciones estàndar= ', ss1)

points(c(mp-2*sd1, mp-2*sd1), c(0,5), type ='l', lwd=3, col='red')

points(c(mp+2*sd1, mp+2*sd1), c(0,5), type ='l', lwd=3, col='red')


num_muestras = 20
muestras = c()

for (i in 1: num_muestras){
	mm <- sample(pob, 12, replace=T)
	muestras <- c(muestras, round(mean(mm)))
}

x1 = min(muestras)-2
x2 = max(muestras)+2

xx = seq(x1, x2, 2)
print(shapiro.test(muestras))
hist(muestras, breaks=xx, main ='Distribución muestral de las media Población')

mp = mean(muestras)

points(c(mp, mp), c(0,6), type ='l', lwd=3, col='blue')

sd1 = sd(muestras)

ss1 = sum(mp - 2*sd1 < muestras & muestras < mp + 2*sd1)

cat('porcentaje de medidas de la población de la media a dos desviaciones estàndar= ', ss1*100/20)

points(c(mp-2*sd1, mp-2*sd1), c(0,1), type ='l', lwd=3, col='red')

points(c(mp+2*sd1, mp+2*sd1), c(0,1), type ='l', lwd=3, col='red')

