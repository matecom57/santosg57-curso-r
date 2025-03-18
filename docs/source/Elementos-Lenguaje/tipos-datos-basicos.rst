Tipos de Datos Básico 
======================

Constantes en R
---------------

Algunas constantes en R: ``TRUE`` ó ``T``, ``FALSE`` ó ``F```, ``pi``, ``NA``, ``NaN``

Tipos de datos Básicos
----------------------
    
* Numeros enteros: -100, -5, 0, 300

* Numeros de punto flotante: 3.5, 3.5e5, 3.5*10^5 

* Numeros complejos: 3+4i, 1i

* Cadenas de caracteres, (string's): 'abc', "abc"


Funciones utiles en el manejo de datos
--------------------------------------

* Convertir numeros de punto flotante a numeros enteros utilizando la función ``as.integer()``.

.. code:: Bash

   > as.integer(2.56)

   [1] 2

* Identificar el tipo de dato de una dato mediante la función ``class()``.

.. code:: Bash

   > x <- 5

   > class(x)

   [1] "numeric"

* También podemos comprobar si una variable es un número entero utilizando la función ``is.integer()``. Estas funciones, ``as.datatype()`` e ``is.datatype()``, existen para todos los tipos de datos mencionados anteriormente.

* El tipo de datos de caracteres se utiliza para representar cadenas. Además, podemos utilizar comillas simples y dobles para encerrar cadenas.

.. code:: Bash

   > s1 = "string"

   > s1
  
   [1] "string"
 
   > s2 = 'also a string'

   > s2

   [1] "also a string"

* Realizamos conversiones entre variables de caracteres y numéricas utilizando las funciones ``as.character()`` y ``as.numeric()``.

.. code:: Bash

   > as.character(2.5)
 
   [1] "2.5"

   > as.numeric('2.5')

   [1] 2.5


* R también proporciona soporte para representar variables complejas que contienen un componente real e imaginario.

.. code:: Bash

   > z = 2 + 3i

* Podemos realizar operaciones directamente sobre las variables complejas.

.. code:: Bash

   > z^2

   [1] -5+12i

Operadores de Asignación
------------------------

Los operadores de asignación que se utilizan en R son: ``<-``, ``->``, ``=``  

Operadores de Comparación
------------------------

``<=``, ``<``, ``>=``, ``>``, ``==``, ``!=``

Ejemplos
--------

1.

.. code:: R

   x <- 5
   5 -> y
   x != y

2.

.. code:: R
   
   x <- TRUE
   x == True






















