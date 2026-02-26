points {graphics}
=================

**Description**

points is a generic function to draw a sequence of points at the specified coordinates. The specified character(s) 
are plotted, centered at the coordinates.

**Usage**

points(x, ...)

## Default S3 method:

points(x, y = NULL, type = "p", ...)

**Arguments**

**x, y** - coordinate vectors of points to plot.

**type** - character indicating the type of plotting; actually any of the types as in plot.default.

... - Further graphical parameters may also be supplied as arguments. See ‘Details’.

**Graphical parameters commonly used are**

* **pch** - plotting ‘character’, i.e., symbol to use. This can either be a single character or an integer code for one 
of a set of graphics symbols. 

Value pch = "." (equivalently pch = 46) is handled specially. It is a rectangle of side 0.01 inch (scaled by cex). 
In addition, if cex = 1 (the default), each side is at least one pixel (1/72 inch on the pdf, postscript and xfig 
devices).

* **col** - color code or name, see par.

* **bg** - background (fill) color for the open plot symbols given by pch = 21:25.

* **cex** - character (or symbol) expansion: a numerical vector. This works as a multiple of par("cex").

* **lwd** - line width for drawing symbols see par.

**Examples**

1.

.. code:: R

   plot(-4:4, -4:4, type = "n")  # setting up coord. system
   points(rnorm(200), rnorm(200), col = "red")
   points(rnorm(100)/2, rnorm(100)/2, col = "blue", cex = 1.5)




