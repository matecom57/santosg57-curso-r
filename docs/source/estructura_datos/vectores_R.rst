Vectores
========

**Variables**

Las variables son unidades de almacenamiento que son guardadas en RAM de la computadora y tienen un nombre.

Los nombres de las **variables** se forman de caracteres alfanuméricos cuya caracter inicial es una letra. El nombre no debe ser
el nombre de una parabra utilizada (reservada) por R, por ejemplo, no ser el nombre de una función, tener cuidado.

**Vectores**

Un vector es una secuencia de números o string's (cadena de caracteres):

.. math::

   (x_1, x_2, x_3, ..., x_n)

deone :math:`x_1`, es el primer elemento; :math:`x_2` es el segundo elemento y así sucesivamente, :math:`x_i` es el i-ésimo elemento del vector.
El vector es logitud n.

En lenguaje **R**, los vectores se pueden definir de varias maneras, veamos algunos ejemplos:

1) x = c(3,4,33,5),  el vector esta formado de 4 elementos,  es asignado a la variable **x**, el 3 esta en la posición 1, el 4 esta en la posicion 2 y así sucesivamente. Estamos utilizando la función ``c()``

2) y = -3:7,  el vector esta formado de la secuencia de números -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7. Utiliza el oprrador ``:``

3) z = seq(0, 1,.3), el vector con valor de inicio 0 e incrementos de .3 es decir 0, .3, .6, .9`. Utiliza la función ``seq()``

4) Consideremos los vectores x = c(3,4,33,5), y=1:4 y z = seq(0,1,.3) entonces se puede contruir los vectores:

a) x = c(x,y)

b) w = c(y,z)

**Operaciones en Vectores**

Sean x = 0:4, y = -2:2. Estos vectores tienen la misma longitud.

a) x+y

b) x-y

c) x^Inf

d) x^x

e) x*y

f) x/y

g) 5*x-3y + x^2- 1/(y+1)

**Sacando elementos de un vector**

Sea x = (3,2,1,4,5,6,3)

Entonces:

.. code:: R

   x[3]
   x[c(3,1,4)]
   x[x >= 2]

**Modificar el contenido de un  vector**

Considremos el vector: x<- -5:5

.. code:: R

   x[c(2, 4, 6)] <- 88
   x

   x[x == 88 ] <- 999

   x <- c(x, c(55, 555))



 
