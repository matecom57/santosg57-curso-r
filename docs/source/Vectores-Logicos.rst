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


