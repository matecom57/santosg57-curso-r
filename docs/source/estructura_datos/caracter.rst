Cadena de caracteres o string's
==============================

un string esta dado como "hola" o 'hola', es decir una cadena de caracteres encerrados con uno o dos apostrofes.

Ejemplos.

.. code:: R

   x <- 'hola como estas'
   
   nl <- nchar(x)

   ss <- substr(x, 2, 5)

  v <- c('uno', 'dos', 'tres')

  nombres <- paste('Juan', 1:10, sep='')
