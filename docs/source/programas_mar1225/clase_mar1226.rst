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

