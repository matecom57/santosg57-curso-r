Tipos de Datos Basico 
======================

- R es un lenguaje interpretado; las expresiones especificadas en un programa R se ejecutan línea por línea de manera similar a otros lenguajes interpretados, 

- R tiene tipos dinámicos, lo que significa que infiere los tipos de datos de las variables en función del contexto. No necesitamos declarar las variables por separado.

Tipos Básicos
----------------

* Numeros enteros: -100, -5, 0, 300

* Numeros de punto flotante: 3.5, 3.5e5, 3.5*10^5 

* Numeros complejos: 3+4i, 1i

* Cadenas de caracteres, strings: 'abc', "abc"




Funciones utiles
----------------

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

* Al igual que otros lenguajes de programación, R también tiene funciones estándar de procesamiento de cadenas, como calcular la longitud de una cadena, encontrar 
subcadenas y dividir una cadena en función de un carácter. La biblioteca ``stringr`` también proporciona un conjunto de funciones más consistentes y fáciles de usar para 
el procesamiento de cadenas.

* El tipo de datos lógico representa los valores booleanos: verdadero y falso. R utiliza dos constantes ``TRUE`` y ``FALSE`` para representar valores booleanos. Estos 
valores 
también se representan mediante las constantes abreviadas ``T`` y ``F``. En este libro, utilizamos estas constantes abreviadas para representar valores booleanos. R 
proporciona 
los operadores booleanos estándar: y (``&``), o (``|``), no (``!``) junto con operadores relacionales como igual a (``==``), menor que (``<``) y mayor que (``>``) que 
operan sobre variables numéricas y devuelven valores booleanos.

* R también proporciona soporte para representar variables complejas que contienen un componente real e imaginario.

.. code:: Bash

   > z = 2 + 3i

* Podemos realizar operaciones directamente sobre las variables complejas.

.. code:: Bash

   > z^2

   [1] -5+12i

Estructuras de Control
----------------------

* R proporciona estructuras de control como ramificaciones condicionales (``if-else``) y **bucles**. La sintaxis de if-else es similar a la de la mayoría de los demás lenguajes de programación:

.. code:: Bash

   > x <- 2
   > if (x > 0) {
   y = 'positive'
   } else {
   y = 'negative or zero'
   }
   y


* Hay muchas otras formas de escribir la misma declaración en R. En primer lugar, podemos usar ``if-else`` para devolver un valor.

.. code:: Bash

   > y = if (x > 0) 'positive' else 'negative or zero'

* También podemos escribir la misma expresión usando la función ``ifelse()``, donde el primer argumento es la condición booleana, y el segundo y tercer argumento son los 
valores respectivos para que la condición sea verdadera y falsa.

.. code:: Bash

   > y = ifelse(x > 0, 'positive', 'negative or zero')

* Una extensión de la función ``ifelse()`` a múltiples valores es la función ``switch()``.

* R también proporciona múltiples estructuras de bucle. El bucle más simple es el bucle ``while``, en el que especificamos la condición booleana junto con un conjunto de 
pasos que se ejecutan cada vez hasta que se cumple la condición. La sintaxis del bucle while no es diferente de la de C. Usamos el bucle while para calcular la suma de los cuadrados de 1 a 10.

.. code:: Bash

   > total = 0
   > i = 1
   > while (i <= 10) {
       total = total + i^2
       i = i + 1
     }
   > total
   [1] 385

* Otra construcción de bucle útil es el bucle de ``repeat``, en el que no hay ninguna condición booleana. El bucle continúa hasta que se cumple una condición de 
interrupción; conceptualmente, el bucle de repetición es similar a while (T). Calculamos la misma suma de cuadrados de 1 a 10 utilizando un bucle de repetición.

.. code:: Bash

   > total = 0
   > i = 1
   > repeat {
       total = total + i^2
       if (i == 10) break
       i = i + 1
   }
   > total
   [1] 385

* R también tiene un bucle for poderoso que es más similar al bucle for de Python o Javascript que al bucle ``for`` de C. En este bucle, iteramos sobre un **vector** de 
elementos. Usamos el operador ``in`` para acceder a un elemento de este vector a la vez. Hablaremos de vectores con más àdelante; por ahora, 
construimos un vector de elementos del 1 al 10 como ``1:10``. Calculamos la misma suma de cuadrados del 1 al 10 usando un bucle for a continuación.

.. code:: Bash

   > total = 0
   > for (i in 1:10) {
       total = total + i^2
     }
   > total
   [1] 38512

Funciones
---------























