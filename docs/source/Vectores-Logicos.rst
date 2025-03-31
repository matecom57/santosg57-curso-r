Vectores lógicos
================

Se tiene los valores lógicos TRUE (T) y FALSE (F) en R. Con estos valores lógicos
se puede construir el vector :math:`v <- c(TRUE, T, FALSE, FALSE, F, T)`. Además se
pueden generar los siguientes vectores lógicos como se muestra en los siguientes 
ejemplos.

Ejemplo 1.

.. source:: R

   x <- c(4,3,1,5,6)
   b <- x>3
   b
   # b es un vector lógico de la misma longitu que ``x``
   # ahora saco los valores de `x` donde hay valor `T`en `b`
   x[b]

Ejemplo 2.

 .. source:: R 

    m <- matrix(round(rnorm(12, mean=55, sd=19)), ncol=3)
    m
    # cuales son los elementos de la matriz que sean mayores a 55
    b <- m> 55
    y = m*b
    y


