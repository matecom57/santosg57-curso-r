library(ggplot2)

datos <- read.csv('EXA_C01_S04_01.csv', header=T)

attach(datos)

print(names(datos))

x <- AGE

muestra <- sample(x, 50, replace=F)

factor <- as.factor(rep(1:5, c(10,10,10,10,10)))

print(factor)

print(length(muestra))
print(length(factor))

dd = data.frame(muestra,factor)

g <- ggplot(dd, aes(x=factor, y=muestra)) +
   geom_boxplot(fill="slateblue", alpha=0.2) +
   xlab("tratamientos")

print(g)

