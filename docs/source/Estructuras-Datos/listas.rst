Listas
======

Una lista es otro tipo de dato estructurado, que puede guardar cualquier otro tipo de datos estructurado.

Definicion de Listas
--------------------

Ejemplos
========

1)

.. code:: Bash

   x1 = 1:10
   x2 = seq(0,1,.1)
   x3 = matrix(1:12, ncol=3)
   x4 = array(1:24, dim=c(4,3,2))

   m = list(x1, x2, x3, x4)
   m

2)

.. code:: Bash

   m = list(y1=x1, y2=x2, y=x3, y99=x4)
   m

   # salvado el objeto ``m``

   save(m, file = "m.RData")
