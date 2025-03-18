Algunos ejemplos
================

1) Salvando una matriz con variables no de la misma longitud

.. code:: R

   x <- c(4,3,6,4,8,7)

   y <- c(3,4,5)

   z <- seq(0,1,.1)

   mat <- cbind(x,y,z) 

   write.csv(mat,'x.csv')

2) Leyendo el archivo 'x.csv' y ver su tipo.
   
.. code:: R

   dd =  read.csv('x.csv', header=T)

   print(class(dd))
   print(dd)


