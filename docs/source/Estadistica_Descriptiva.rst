Estadística Descriptiva
=======================

Funciones útiles: ``mean, median, sd, var, quantile``

Distribución de Probabilidad ``Normal``

.. code:: Bash

   x <- seq(-3,3,.1)
   y <- dnorm(x)

   par(mfrow=c(2,2)
   plot(x,y, type='l', main='Densidad Normal')
   
   r = rnorm(100)
   plot(r, main='Números Aleatorios')

   p = pnorm(x, , main='Frecuencia Acumulada')

