R como Lenguaje de Programación
===============================

Ventajas de utilizar "R"
------------------------

-  La primera ventaja de utilizar **R** es que se trata de un software de código abierto. Tiene muchas ventajas respecto de otras plataformas estadísticas comerciales como MATLAB, SAS y SPSS. Además, R funciona en la mayoría de las plataformas: GNU/Linux, OS X, Windows.

- R tiene sus raíces en la comunidad estadística, ya que fue creado por estadísticos para estadísticos. 

  Esto se refleja en el diseño del lenguaje de programación: 
 
  * muchos de sus elementos básicos están orientados al análisis estadístico. 

  * La segunda ventaja de usar R es que la cantidad de código que necesitamos escribir en R es muy pequeña en comparación con otros lenguajes de programación. 

- R se puede utilizar como un entorno interactivo o no interactivo. Podemos utilizar R como una consola interactiva, donde podemos probar sentencias individuales y observar el resultado directamente. 

- El beneficio final de usar R es el conjunto de paquetes de R. La razón más importante de la creciente popularidad de R es su vasta biblioteca de paquetes llamada Red Integral de Archivos de R, o más comúnmente conocida como CRAN.1 La mayoría de los métodos de análisis estadístico suelen tener una implementación de código abierto en forma de un paquete de R. 


HOY
---

1. Instalación de R

2. Herramientas de desarrollo

3. Elementos del lenguaje de programación R, como los **operadores** y los **tipos de datos**. 

4.  Sintaxis de diferentes estructuras, como las **sentencias condicionales** y los **bucles**, junto con las **funciones**.

5.  Carga de **paquetes** R desde Comprehensive R Archive Network (**CRAN**).

6. Ejecución del código R fuera de la consola R mediante ``Rscript``.


------------------------------------------------------------

1. Instalación de R
*******************

- Hay dos formas de instalar R, descargar un archivo  binario de R o descargar el codigo fuente de R y compilar este codigo. 

- El lenguaje R se desarolla en versiones y estas se representan en números de secuencia y un nombre.

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

* Podemos crear expresiones utilizando variables. Por ejemplo, asignamos el valor 5 a la variable x y evaluamos el cuadrado de x utilizando el operador de exponenciación (ˆ).

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

   > print(paste(’the sum is’, 3 + 4))

   [1] "the sum is 7"







