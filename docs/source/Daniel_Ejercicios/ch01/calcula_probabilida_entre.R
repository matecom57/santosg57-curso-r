datos <- read.csv('EXA_C01_S04_01.csv', header=T)

print(names(datos))

attach(datos)

hist(AGE)

xm = mean(AGE)
s = sd(AGE)

cat('media= ', round(xm,2), ' sd= ', round(s, 2), '\n')
val1 = 50
val2 = 60

x1 = (val1-xm)/s
x2 = (val2-xm)/s

cat('probabilidad: ', round(pnorm(x2)-pnorm(x1),2), '\n')

cat('frecuencia relativa: ', round(sum(AGE<=val2 & AGE >= val1)/length(AGE), 2), '\n')




