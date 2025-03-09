Instalaciion
============

- Hay dos formas de instalar R, descargar un archivo  binario de R o descargar el codigo fuente de R y compilar este codigo. 

- El lenguaje R se desarolla en versiones y estas se representancon números de secuencia y un nombre.

- El repositorio de softeare de este lenguaje esta en: https://www.r-project.org/

2.Herramientas de desarrollo
****************************

- El codigo que se escribe en lenguaje R, se puede ejecutar dentro de un programa que es llamado **Ambente de Desarrollo (IDE)** o escribir el codigo en un editor de texto externo y ejecutar el codigo en un terminal en línea de comando.

- En **Windows**, R se instala como una aplicación de interfaz gráfica de usuario (GUI) con un conjunto de herramientas de desarrollo, como un editor integrado. También existe una aplicación GUI similar llamada **R.app** para Mac OS X. Sin embargo, estas aplicaciones son bastante básicas en comparación con los entornos de desarrollo integrados (IDE) para otros lenguajes de programación.

- Recientemente, hay muchos IDE independientes disponibles para R. Uno de los IDE más potentes es ``RStudio``.

- Algunos IDE's:

  * https://posit.co/download/rstudio-desktop/

  * https://code.visualstudio.com/download

3. Elementos del lenguaje de programación R. Operadores y Tipos de Datos.
************************************************

-  R es un lenguaje interpretado; las expresiones especificadas en un programa R se ejecutan línea por línea de manera similar a otros lenguajes interpretados, 

- R tiene tipos dinámicos, lo que significa que infiere los tipos de datos de las variables en función del contexto. No necesitamos declarar las variables por separado.

Operadores
+++++++++

- R proporciona operadores aritméticos como suma (+), resta (-), multiplicación (*), división (/) y exponenciación (ˆ). 

Ingresamos la expresión 3 + 4 en la consola R. 

.. code:: Bash

   > 3 + 4
   
   [1] 7

* Usamos un operador de asignación para asignar el valor de una expresión a una variable. R tiene dos operadores de asignación: el operador de asignación convencional ``=`` que está presente en la mayoría de los lenguajes de programación, y las flechas ``<-`` y ``->`` que son específicas de R.

* La expresión ``x = 5`` asigna el valor 5 a x; la expresión ``x <- 5`` y ``5 -> x`` tienen exactamente el mismo efecto.

* Podemos crear expresiones utilizando variables. Por ejemplo, asignamos el valor **5** a la variable **x** y evaluamos el cuadrado de **x** utilizando el operador de 
exponenciación (ˆ).

.. code:: Bash

   > x <- 5

   > x^2

Desplegando Valores de Variables
++++++++++++++++++++++++++++++++

* Al ingresar una **expresión** en la consola R, se evalúa la expresión y luego se imprime su valor. Internamente, R llama a la función ``print()`` con el valor de la expresión. También podemos llamar a print() explícitamente. Esto es útil cuando queremos imprimir valores para variables en un **script**.

.. code:: Bash

   > print(3 + 4)
   
   [1] 7

* La función ``print()`` imprime el valor de la expresión y una nueva línea. Sin embargo, no es sencillo imprimir varios valores utilizando print(), por ejemplo, si queremos imprimir el nombre de la variable junto con el valor. Necesitamos imprimir la salida de la función ``paste()`` que concatena dos cadenas con un espacio.

.. code:: Bash

   > print(paste('the sum is', 3 + 4))

   [1] "the sum is 7"


* Existe una función más simple llamada ``cat()`` que puede imprimir una lista de valores, por lo que no necesitamos llamar a paste(). Como la función cat() no imprime el carácter de nueva línea, debemos especificarlo manualmente.

.. code:: Bash

   > cat('the sum is', 3 + 4, '\n')

   the sum is 7

Tipos de datos Básicos
----------------------

* Existen dos tipos de datos: los **escalares**, que representan datos de un solo valor, y los **compuestos**, que representan conjuntos de datos escalares. Aquí 
analizamos los tipos de datos escalares en R.

* R ofrece múltiples formatos de tipos de datos escalares, como **numéricos**, **enteros**, **caracteres (string's)**, **lógicos** y **complejos**.
 
El tipo de datos numéricos se utiliza para representar números de **punto flotante**, mientras que los datos enteros se utilizan para representar únicamente **valores 
enteros**. 

Podemos convertir variables de numéricas a enteras utilizando la función ``as.integer()``.

.. code:: Bash

   > as.integer(2.56)

   [1] 2

* Identificamos el tipo de dato de una variable mediante la función ``class()``.

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























