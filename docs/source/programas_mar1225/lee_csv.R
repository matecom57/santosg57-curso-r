datos <- read.csv('frame.csv', header=T)

print(str(datos))

attach(datos)

sexo <- table(SEXO)

barplot(sexo, col=c('pink', 'green'))

pesoF <- PESO[SEXO == 'F']
pesoM <- PESO[SEXO == 'M']

boxplot(pesoF, pesoM, names=c('F', 'M'))

mF = mean(pesoF)
mM = mean(pesoM)  

points(c(1, 2), c(mF, mM), pch=16, col='red')

ii = IQR(pesoF)
cc = quantile(pesoF)

points(1, cc[2], pch=16, col='blue')

