library(ggplot2)

datos <- read.csv('EXA_C01_S04_01.csv', header=T)

attach(datos)

print(names(datos))

x <- AGE

br = seq(30,90,10)
h <- hist(AGE, breaks=br, right = F)

print(h)

frec <- h$count

print(frec)

frecAcum <- cumsum(frec)

print(frecAcum)

frecRel <- frec/sum(frec)

frecRelAcum <- cumsum(frecRel)

tabla <- data.frame(frec, frecAcum, frecRel, frecRelAcum)

print(tabla)

np1 = length(h$mids)

for (i in 1:np1-1){
	x1 = h$mids[i]
	x2 = h$mids[i+1]
	y1 = h$counts[i]
	y2 = h$counts[i+1]
	points(c(x1,x2), c(y1, y2), type='l', col='red')
}
