datos <- read.csv('EXA_C01_S04_01.csv', header=T)

print(names(datos))

attach(datos)

x <- AGE
xN = x

print(min(x))
print(max(x))

y = cut(x, seq(30,90,10), right = F)
table(y)

typeof(y)
class(y)

z = as.matrix(table(y))

print(z)

x = as.vector(z[,1])
x_acum = cumsum(as.vector(z[,1]))
x_frecR = round(x/sum(x),4)
x_acum_frecR = round(cumsum(x_frecR), 4)

print(x)

z = cbind(z, x_acum, x_frecR, x_acum_frecR)

print(z)

h = hist(xN, breaks=seq(30,90,10), right = F, xlim=c(20,100))

print(h)

points(h$mids, h$counts, type='l', col='red', lwd=3)

points(c(h$mids[1]-(h$mids[2] - h$mids[1]), h$mids[1]), c(0, h$counts[1]), type='l', col='red', lwd=3)

n = length(h$mids)

points(c(h$mids[n], h$mids[n]+ (h$mids[2] - h$mids[1])), c(h$counts[n], 0), type='l', col='red', lwd=3)

