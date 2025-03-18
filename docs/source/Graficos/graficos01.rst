Graficos en el Plano (R^2)
=========================

plot() y points()
-----------------

Para hacer una grafica de dispersión de puntos ó curvas en el plano, de la variable ``y vs x`` utilizamos la función de R: ``plot``.
Entonces para añadir puntos o curvas a la grafica se utiliza la función: ``points``



Ejemplos:

1. Sea:

.. code:: Bash
  
   x <- c(1, 1.5, 2, 3, 3.5, 4)
   y <- c(3, 5, 3, 6, 2, 1)
   plot(x,y)

2. Sea:

.. code:: Bash

   x <- seq(-2,4,.1)
   y <- x^2
   plot(x,y, type='l')

   points(x, x^3, col='red', type='l')


boxplot
-------

Sea

.. code:: Bash

   x <- c(58, 53, 50, 52, 55, 53, 53)
   y <- c(58, 59, 53, 55, 64, 55, 56, 64, 57, 62, 60, 59)
   z <- c(56, 65, 50, 47, 63, 60, 61, 46, 62, 58, 57, 61)

   boxplot(x,y,z)

Otra manera de graficar lo anterior:

.. code:: Bash
   
   x <- c(58, 53, 50, 52, 55, 53, 53)
   y <- c(58, 59, 53, 55, 64, 55, 56, 64, 57, 62, 60, 59)
   z <- c(56, 65, 50, 47, 63, 60, 61, 46, 62, 58, 57, 61)

   w <- c(x,y,z)
   f = factor(c(rep(1, 7), rep(2,12), rep(3,12)))
   boxplot(w ~ f)

4. Sea

.. code:: Bash
   
   x <- c(58, 53, 50, 52, 55, 53, 53)
   barplot(x, ylim=c(0, 70)

barplot
-------

AYUDA:

.. code:: Bash

   barplot {graphics}	R Documentation
   Bar Plots

   Description

   Creates a bar plot with vertical or horizontal bars.

   Usage

   barplot(height, ...)

   ## Default S3 method:
   barplot(height, width = 1, space = NULL,
        names.arg = NULL, legend.text = NULL, beside = FALSE,
        horiz = FALSE, density = NULL, angle = 45,
        col = NULL, border = par("fg"),
        main = NULL, sub = NULL, xlab = NULL, ylab = NULL,
        xlim = NULL, ylim = NULL, xpd = TRUE, log = "",
        axes = TRUE, axisnames = TRUE,
        cex.axis = par("cex.axis"), cex.names = par("cex.axis"),
        inside = TRUE, plot = TRUE, axis.lty = 0, offset = 0,
        add = FALSE, ann = !add && par("ann"), args.legend = NULL, ...)

   ## S3 method for class 'formula'
   barplot(formula, data, subset, na.action,
        horiz = FALSE, xlab = NULL, ylab = NULL, ...)



