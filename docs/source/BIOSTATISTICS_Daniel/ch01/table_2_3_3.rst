Cap 02. TABLA 2.3.2
===================

Programa para o
crear tablas e histogramas del capítulo 2.

.. code:: R

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

Funciones utilizadas:

``attach`` - dado un dataframe el cual esta formado de variables de la misma longitud, esta funcion al aplicarla al daataframe
permite que las variables sean accesadas por su nombre.

``cut()`` - Esta función divide el rango de valores de x en intervalos y codifica los valores de x según el intervalo en el que 
se 
encuentran. 

``table()`` - Crea una tabla de los rangos que se definen.

``cumsum()`` - Dado un vector, crea otro vector de la frecuencia acumulada.

 
