Vectores
========


Un vector es la mínima información que lenguaje R puede manejar como una unidad de información y
se representa como :math:`(x_1, x_2, ..., x_n)`, donde los :math:`x_i`, i=1,..,n son del mismo tipo.

Creación de vectores
--------------------

Hay varias maneras de crear vectores, algunos ejemplos son:

1) Utilizando la funcion ``c()``

.. code:: Bash

   c(3,4,500,66) # utilizo la funcion c() para crear un vector de 4 elementos
                 # el 3 primer elemento, 4 el segundo, 500 el tercero y 66 el cuarto elemento.

2) Con la función ``seq()``

.. code:: Bash

   seq(-10,10,3) # se crea un vector con los elementos -10. -7, -4, -1, 2, 5, 8
  
3) Con el signo ``:``

.. code:: Bash

   4:10 # genera las secuencia de números 4,5,6,7,8,9,10

Operaciones entre Vectores
--------------------------

Se tienen los operadores aritméticos: +, -, *, /, ^

Podemos hacer la siguientes operaciones:

Sean los vectores: v1 = c(2,3,1,4) y v2=c(4,3,2,2)

Entonces:

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

Aplicando funciones de R a vectores
-----------------------------------

Sea x <- c(4,3,2,3,4,5,3), y <- c(5,3, 4, 6, 7, 3, 4) etonces

.. code:: R

   mean(x)
   
   log(x)

   x^y

   4*x + y


