plot {base}
===========

Generic function for plotting of R objects.

**Usage**

plot(x, y, ...)

**Arguments**

* x - the coordinates of points in the plot. Alternatively, a single plotting structure, function or any R object with a plot method can be provided.

* y - the y coordinates of points in the plot, optional if x is an appropriate structure.

* ...	

Arguments to be passed to methods, such as graphical parameters (see par). Many methods will accept the following arguments:

**type** - what type of plot should be drawn. Possible types are

* "p" for points,

* "l" for lines,

* "b" for both,

* "c" for the lines part alone of "b",

* "o" for both ‘overplotted’,

* "h" for ‘histogram’ like (or ‘high-density’) vertical lines,

* "s" for stair steps,

* "S" for other steps, see ‘Details’ below,

* "n" for no plotting.


**main** - an overall title for the plot: see title.

**sub** - a subtitle for the plot: see title.

**xlab** - a title for the x axis: see title.

**ylab** - a title for the y axis: see title.

**Examples**

1.

.. code:: R

   plot(cars)
   lines(lowess(cars))

2.

.. code:: R

   plot(sin, -pi, 2*pi)



