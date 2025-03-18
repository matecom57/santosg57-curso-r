Algunos ejemplos
================

1) --------------------------------------------------

.. code:: R

   x <- c(4,3,6,4,8,7)

   y <- c(3,4,5)

   z <- seq(0,1,.1)

   mat <- cbind(x,y,z)

   write.csv(mat,'x.csv')

1) --------------------------------------------------
   
.. code:: R

   dd =  read.csv(mat,'x.csv', header=T)

   print(dd)


