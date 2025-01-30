Vectores
========

Un vector esta dado por: (x1, x2, x3,...., xn), es una secuencia de números
que se determinan por su posición, iniciando en 1, 2, y así sucesivamente.
El vector en este caso es de longitud n. Ejemplos como se definen vectores en R.

.. code:: Bash

   c(1,2,3,4,100)

   c(1/2, exp(2), sqrt(5))

   c(-3, 0, 1)

Los vectores se pueden asignar a variables y estas representa al vector asignado.
Ejemplos:

.. code:: Bash

   x = c(1,2,3,4,100)

   w = c(1/2, exp(2), sqrt(5))

   z = c(-3, 0, 1)

El vector **x** es de longitud 5 y los vectores **w** y **z** son de longitud 3.

Para sacar elementos de un vector, existen varias maneras. Agunos ejemplos:

Consideremos el vector:

.. code:: Bash
   
   a = c(.5, .3, sqrt(2), exp(5), 10, 1/2, pi, e)

Entonces:

.. code:: Bash

   a[2]

   a[5:7]


