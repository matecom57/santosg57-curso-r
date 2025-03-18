Estructuras de Control
======================

* R proporciona estructuras de control como ramificaciones condicionales (``if-else``) y **bucles**. La sintaxis de if-else es similar a la de la mayoría de los demás lenguajes de programación:

IF
--

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

* También podemos escribir la misma expresión usando la función ``ifelse()``, donde el primer argumento es la condición booleana, y el segundo y tercer argumento son los valores respectivos para que la condición sea verdadera y falsa.

.. code:: Bash

   > y = ifelse(x > 0, 'positive', 'negative or zero')

* Una extensión de la función ``ifelse()`` a múltiples valores es la función ``switch()``.

while
-----

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
























