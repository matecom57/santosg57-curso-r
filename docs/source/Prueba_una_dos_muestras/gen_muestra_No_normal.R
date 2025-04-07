library(ggplot2)

Pob = round(runif(100, min=48, max=62))

#Pob = round(rnorm(100, mean=55, sd=7))

np = 12

Muestras = c()
Tiempos = c()
Medias = c()
medias = c()

for (i in 1:50){
   muestra = sample(Pob, np, replace=F)
   t = rep(i,np)
   Muestras = c(Muestras, muestra)
   m  = mean(muestra)
   medias = c(medias, m)
   Tiempos = c(Tiempos, t)
   Medias = c(Medias, rep(m, np))
}

med = mean(medias)
media = rep(med, 12*50)
sd1 = sd(medias)/sqrt(np)
SD1 = rep(med - 2*sd1, 12*50)
SD2 = rep(med + 2*sd1, 12*50)

datos = data.frame(Tiempos, Muestras, Medias, media, SD1)

p = ggplot(datos, aes(as.factor(Tiempos), Muestras)) + geom_boxplot(fill="slateblue", alpha=0.2) + geom_point(aes(as.factor(Tiempos), Medias), col='red') +
    geom_point(aes(as.factor(Tiempos), media), col='blue') + geom_point(aes(as.factor(Tiempos), SD1), col='blue', shape=24) +
    geom_point(aes(as.factor(Tiempos), SD2), col='blue', shape=25)

print(p)

num = abs(medias - med) < 2*sd1

print(sum(num)*100/50)





