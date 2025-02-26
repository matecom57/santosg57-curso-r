x = seq(0, 2*pi, .01)
y = sin(x)

dy = cos(x)

plot(x,y, type='l')
points(x,dy, type='l', col='green')