Vectores
========

Un vector es la mínima información que lenguaje R puede manejar como una unidad de información y
se representa como :math:(x1, x2, ..., xn), donde los xi, i=1,..,n son del mismo tipo de datos.

Hay varias maneras de crear vectores, algunos ejemplos son:

1)

.. code:: Bash

   c(3,4,500,66) # utilizo la funcion c() para crear un vector de 4 elementos
                 # el 3 primer elemento, 4 el segundo, 500 el tercero y 66 el cuarto elemento.

2)

.. code:: Bash

   seq(-10,10,3) # se crea un vector con los elementos -10. -7, -4, -1, 2, 5, 8
  
3)

.. code:: Bash

   4:10 # genera las secuencia de números 4,5,6,7,8,9,10

Operaciones entre Vectores
--------------------------

Se tienen los operadores aritméticos: +, -, *, /, ^

Podemos hacer la siguientes operaciones:

Sean los vectores: v1 = c(2,3,1,4) y v2=c(4,3,2,2)

Etonces:

.. code:: Bash

   v3 = v1+v2
   v3

   v3 = v1*v2
   v3

   v3 = v1/v2
   v3

   v3 = v1-v2
   v3

   v3 = v1^3
   v3

   v3 = sqrt(v1)
   v3

   v3 = sum(v1)
   v3

   v3 = 4*v1
   v3



