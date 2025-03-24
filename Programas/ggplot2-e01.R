library(ggplot2)

x = 1:20

y1 = x + runif(20, min=-2, max=2)

y2 = 1+y1

plot(x,y1)
points(x,y2, col='red')

xy = data.frame(x,y1, y2)
ggplot(xy, aes(x,y1)) + geom_point()+geom_point(aes(x,y2), col='red')



