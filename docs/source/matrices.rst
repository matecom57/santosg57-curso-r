Matrices
========

.. image:: matrices.png

Ejemplos
--------

.. code:: Bash

   1:12
   matrix(1:12)

.. code:: Bash

   matrix(1:12, nrow = 3, ncol = 4)

.. code:: Bash
 
   matrix(1:12, nrow = 5, ncol = 4)

Otra manera para crear matrices es utilizando las  funciones:
-------------------------------------------------------------

``cbind()`` para unir vectores, usando cada uno como una columna.

``rbind()`` para unir vectores, usando cada uno como un renglón.

Ejemplos
--------

.. code:: Bash

   vector_1 <- 1:4
   vector_2 <- 5:8
   vector_3 <- 9:12
   vector_4 <- 13:16

   matriz <- rbind(vector_1, vector_2, vector_3, vector_4)

   matriz <- cbind(vector_1, vector_2, vector_3, vector_4)

.. code:: Bash

   vector_1 <- 1:2
   vector_2 <- 1:3
   vector_3 <- 1:5

   matriz <- cbind(vector_1, vector_2, vector_3)

Propiedades de las matrices
----------------------------

.. code:: Bash

   mi_matriz <- matrix(1:10)

   class(mi_matriz)

   ## [1] "matrix"

.. code:: Bash

   mi_matriz <- matrix(1:12, nrow = 4, ncol = 3)
   dim(mi_matriz)
   ## [1] 4 3

Operaciones en Matrices
-----------------------

.. code:: Bash

    mi_matriz <- matrix(1:9, nrow = 3, ncol = 3)

    # Suma
    mi_matriz + 1

    # Multiplicación
    mi_matriz * 2

    # Potenciación
    mi_matriz ^ 3

.. code:: Bash

   matriz <- matrix(1:6, nrow = 3)

   matriz_t <- t(matriz)


Sacando elementos de una matriz
-------------------------------

m = matrix(1:12, ncol=3)

m[2,3]

> m[2,]

m[,3]

m > 4

m*(m>4)

Display Imagenes

# Datos
x <- -10:10
y <- -10:10
z <- sqrt(outer(x ^ 2, y ^ 2, "+"))

image(x, y, z)

image(m-1, col= gray.colors(14))



