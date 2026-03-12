x = paste('Juan', 1:20, sep='')
edad = round(runif(35, min=30, max=60))
y = paste('Lupe', 1:15, sep='')
xpeso = round(rnorm(20, mean=60, sd = 5))
ypeso = round(rnorm(15, mean=55, sd = 7))
xsexo = rep('M', 20)
ysexo = rep('F', 15)

ff <- data.frame(c(x,y), c(xsexo, ysexo), edad, c(xpeso, ypeso))

rn <- paste('S', 1:35, sep='')

rownames(ff) <- rn

colnames(ff) <- c('NOMBRES', 'SEXO', 'EDAD', 'PESO')

write.csv(ff, 'frame.csv')



