apply - package:base    
=============================

* Aplicar funciones sobre los márgenes de una matriz, arreglo.
* Aplicar funciones en los elementos de una lista.
* Aplicar funciones en variables categoricas. 

**Ejemplo-1**

.. code:: R

   x <- 1:12
   dim(x) <- c(4,3)

   print(x)

   mediana <- apply(x, 1, median)
   media <- apply(x, 1, mean)
   des_st <- apply(x, 1, sd)

   cat('\n \n \n', 'En filas: mediana= ', mediana, ' media= ', media, 'des_st= ', des_st, '\n')

   cx <- cbind(x, mediana, media, des_st)

   print(cx)

   mediana <- apply(x, 2, median)
   media <- apply(x, 2, mean)
   des_st <- apply(x, 2, sd)

   cat('\n\n\n En columnas: mediana= ', mediana, ' media= ', media, 'des_st= ', des_st, '\n')


   rx <- rbind(x, mediana, media, des_st)

   print(rx)


**Ejemplo-2**

.. code:: R

   x <- 1:24
   dim(x) <- c(3,2, 4)

   print(x)

   mediana <- apply(x, c(1,2), median)
   media <- apply(x, c(1,2), mean)
   des_st <- apply(x, c(1,2), sd)

   cat('mediana= ', mediana, ' media= ', media, 'des_st= ', des_st, '\n')

   ss = dim(x)

   print(ss)

   n1 = ss[1]
   n2 = ss[2]
 
   for (i in 1:n1){
     for (j in 1:n2){
       z = x[i,j,]
       cat('mediana= ', median(z), 'media= ', mean(z),'sd= ', sd(z), '\n')
     }
   }

**Ejemplo-3**

.. code:: R

   l1 <- list(1:5, seq(0,1,.1), -5:5)

   print(l1)

   mediana = as.numeric(lapply(l1, median))
   media = as.numeric(lapply(l1, mean))
   sd1   = as.numeric(lapply(l1, sd))

   cat('mediana: ' , mediana, 'media: ', media, 'sd: ', sd1, '\n')

**Ejemplo-4**

.. code:: R

   x = 1:24
   y = c(rep(1,12), rep(2, 8), rep(3,4))

   print(length(x))
   print(length(y))

   res = tapply(x,y, sum)

   print(res)


