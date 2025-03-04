DataFrames
==========

DataFrames es otro tipo de dato estructurado, parecido a una hoja en Excel, cuyos datos
de cuardan en celdas y estas son arregladas en filas y columnas.

Ejemplos
--------

1) 

.. code:: Bash

   num <- 1:10
   nombre <- paste('Juan',1:10, sep='')
   edad <- round(runif(10, min=30, max=60))
   peso <- round(rnorm(10, mean=57, 7))

   data <- data.frame(num, nombre, edad, peso)

   data

   # salvando el dataframe

   write.csv(data, 'datos.csv')
