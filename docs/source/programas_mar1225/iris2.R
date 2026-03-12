print(str(iris))

attach(iris)

tt = table(Species)

barplot(tt, col=1:3)

col3 = c(rep('red', 50), rep('green', 50), rep('blue', 50))

plot(Petal.Length, Petal.Width, pch=16, col=col3)


