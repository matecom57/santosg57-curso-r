rm(list=ls())

args <- commandArgs(trailingOnly = TRUE)

val <- as.numeric(args[1])
print(val)

datos <- read.csv('EXA_C01_S04_01.csv', header=T)

print(names(datos))

attach(datos)

h <- hist(AGE)

xm = mean(AGE)
s = sd(AGE)

cat('media= ', round(xm,2), ' sd= ', round(s, 2), '\n')
#val = 35
x0 = (val-xm)/s

cat('probabilidad: ', round(pnorm(x0),2), '\n')

cat('frecuencia relativa: ', round(sum(AGE<=val)/length(AGE), 2), '\n')




