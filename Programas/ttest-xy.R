datos <- read.csv('xy.csv', header=T)

print(names(datos))

attach(datos)

boxplot(x,y, ylim=c(0,100))

res <- t.test(x,y)

print(res)
