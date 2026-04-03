Funciones en R
==============

Las funciones en R son **programas** que realizan un cálculo y entrega resultados.

Estas funciones aceptan parámetros de entrada para realizar sus calculos.

**Ejemplos**

+--------------+------------------------------------------------------------------------+
| **sum()**    | calcula la suma de los elementos de un vector o matriz                 |
+--------------+------------------------------------------------------------------------+
| **mean()**   | calcula la media aritmética de los elementos de un vector o matriz     |
+--------------+------------------------------------------------------------------------+
| **getwd()**  | te dice en que folder estas guardando tus datos                        |
+--------------+------------------------------------------------------------------------+
| **setwd()**  | cambia tu folder de trabajo                                            |
+--------------+------------------------------------------------------------------------+
| **max()**    |  encuentra el máximo                                                   |
+--------------+------------------------------------------------------------------------+
| **min()**    | encuentra el mínimo                                                    |
+--------------+------------------------------------------------------------------------+
| **median()** | calcula la mediana                                                     |
+--------------+------------------------------------------------------------------------+
| **log()**    | calula el logaritmo de base e                                          |
+--------------+------------------------------------------------------------------------+
| **plot()**   | crea nueva ventana y grafica pares ordenados en el plano               |
+--------------+------------------------------------------------------------------------+
| **points()** | grafica pares ordenados en el plano en la ventana previamente definida |
+--------------+------------------------------------------------------------------------+
| **rep()**    | repite un vector tantas veces como uno quiere                          |
+--------------+------------------------------------------------------------------------+

**Ejemplos**


Sea x = c(3, 2, 5, 3, 2, 6)

.. code:: R

   mean(x)

   min(x)

   median(x)

**Funciones definidas por el USUARIO**

Una función definida por el usuario sigue la estructura siguiente:

.. code:: R

   nombreFuncion <- function(par1, par2,...,parn){
     instruccion-1
     instruccion-2
     ...
     instruccion-n
     resultado
   }

donde 

* **nombreFuncion** - es el nombre de la función que le asignamos, 
* ``function`` es la palabra reservada de "R" para definir una función, 
* **par1, par2,...,parn** son parámetros que representan variables que son utilizadas por la función para hacer sus calculos, 
* **resultado** es la ultima instrucción y es la que devuelve el resultado cuando 
es llamada dentro del programa principal,

**Ejemplos**

1)

.. code:: R

   rm(list=ls())

   EncuentraRaices <- function(a = 0, b=0, c=0){
     # Encuentra las racices de una ecuación de 2o grado: ax^2+bx +c = 0.
     # Suponemos que las raices son reales, ademas a !=0.
     del1 = b^2 - 4*a*c
     x1 = (-b + sqrt(del1))/ (2*a)
     x2 = (-b - sqrt(del1))/ (2*a)
 
     res = c(x1, x2)
   }
 
   ss = EncuentraRaices(1, 1, -2)

   cat('las raices son', ss, '\n')


2)

.. code:: R

   CalAreaPer_Circulos <- function(r = 0){
     # devuelce área y perímetro de un círculo

     area <- pi*r^2
     perimetro <- 2*pi*r
     res <- c(area, perimetro)
   }

   cat('Area y perímetro de un círculo de radio 1:', CalAreaPer_Circulos(1), '\n')

   cat('Area y perímetro de un círculo de radio 2:', CalAreaPer_Circulos(2), '\n')


