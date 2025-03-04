Funciones Paralelas
===================

Existen funciones que al ser aplicadas en matrices o arreglos trabajan de manera paralela en 
cada una de las dimensiones que lo forman.

Ejemplos:

``colSums``

.. code:: Bash

   m = matrix(1:12, ncol=3)
   s = colSums(m)
   s

``apply``

.. code:: Bash

   m = array(1:24, dim=c(4,3,2))

   s = apply(m,3,sum)
   s
