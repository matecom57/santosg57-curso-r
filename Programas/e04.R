GenCirculo <- function(x0=0, y0=0, radio=0){
	t = seq(0,2*pi,.01)
	x = x0 + radio*cos(t)
	y = y0 + radio*sin(t)
	res = list(x,y)
}

plot(c(-50,50), c(0,0), xlim=c(-50,50), ylim=c(-50,50))

x0 = runif(1, min=-50, max=50)
y0 = runif(1, min=-50, max=50)
radio = runif(1, min=2, max=20)


c1 = GenCirculo(x0, y0, radio)

points(c1[[1]], c1[[2]], type='l')

x0 = runif(1, min=-50, max=50)
y0 = runif(1, min=-50, max=50)
radio = runif(1, min=2, max=20)


c1 = GenCirculo(x0, y0, radio)

points(c1[[1]], c1[[2]], type='l')