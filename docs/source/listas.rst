Listas
======

Una lista es otro tipo de dato estructurado, que puede guardar cualquier otro tipo de datos estructurado.

Ayuda ``list``

.. code:: Bash

   list {base}	R Documentation
   
   Lists – Generic and Dotted Pairs

   Description

   Functions to construct, coerce and check for both kinds of R lists.

   Usage

   list(...)
   pairlist(...)

   as.list(x, ...)

   ## S3 method for class 'environment'

   as.list(x, all.names = FALSE, sorted = FALSE, ...)
   as.pairlist(x)

   is.list(x)
   is.pairlist(x)

   alist(...)

   Arguments
 
   ...		objects, possibly named.

   x		object to be coerced or tested.

   all.names	a logical indicating whether to copy all values or (default) only those whose names do not begin with a dot.sorted a logical indicating whether the names of the resulting list should be sorted (increasingly). Note that this is somewhat costly, but may be useful for comparison of environments.


**Ejemplos**

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

   m = list(y1=x1, y2=x2, y=3x3, y99=x4)
   m
