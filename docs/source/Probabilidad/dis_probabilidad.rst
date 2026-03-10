Distribuciones de Probabilidad
==============================

**Normal**

.. code:: R

   par(mfrow=c(2,2))
   x <- rnorm(100, mean=55, sd = 7)
   plot(x, pch=16, main='números areatoreos de una Distribución Normal')
   
   x1 = 55-20
   x2 = 55+20
   x = seq(x1,x2, .1)
   dx <- dnorm(x, mean=55, sd = 7)
   plot(x, dx, type='l', lwd=3, main='funcion de densidad de Distribución Normal')
   
   p <- pnorm(x, mean=55, sd = 7)

   plot(x, p, type='l', lwd=3, main='función de distribución Normal Acumulada')

   p = seq(0, 1, .01)
   q = qnorm(p,  mean=55, sd = 7)

   plot(p, q, type='l', lwd=3, main='función  de cuantiles de distribución Normal')
