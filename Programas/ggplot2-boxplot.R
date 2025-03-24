library(ggplot2)

y1 = rnorm(20, mean=55, sd=10)

y2 = rnorm(15, mean=60, sd=7)

x = c(rep(1, 20), rep(2,15))
y = c(y1, y2)

xy = data.frame(x,y)

ggplot(xy, aes(x,y)) + geom_boxplot()



