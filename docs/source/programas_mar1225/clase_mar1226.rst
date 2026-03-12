clase - mar1226
===============

**Genera un data Frame y lo guarda en formato "CSV"**

.. code :: R

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


**Lee archivo guardado y genera información**

.. code:: R

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


**Creación de un histograma**

.. code::

   x = round(rnorm(50, mean=55, sd=7))
   y = round(rnorm(30, mean=67, sd=4))

   x0 = 60~x = round(rnorm(50, mean=55, sd=7))
   y = round(rnorm(30, mean=67, sd=4))

   x0 = 62
   x = x[x < x0]
   z = c(x,y)

   hist(z)

   bb = seq(min(z), max(x)+2, 2)
   h <- hist(x, breaks=bb, xlim=c(30, 70))

   typeof(h)
   class(h)

   names(h)

   points(h$mids, h$counts, type='l', lwd=3, col='red')

   points(c(h$mids[1] - (h$mids[2]-h$mids[1]), h$mids[1]), c(0, h$counts[1]), type='l', lwd=3, col='red')
 
   n = length(h$counts)

   points(c(h$mids[n], h$mids[n] + (h$mids[2]-h$mids[1])), c(h$counts[n], 0), type='l', lwd=3, col='red')

**Datos Iris**

.. code:: R

  print(str(iris))

  attach(iris)

  tt = table(Species)

  barplot(tt, col=1:3)

  col3 = c(rep('red', 50), rep('green', 50), rep('blue', 50))

  plot(Petal.Length, Petal.Width, pch=16, col=col3)


