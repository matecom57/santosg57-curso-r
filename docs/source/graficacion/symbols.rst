symbols      
============

**Draw Symbols (Circles, Squares, Stars, Thermometers, Boxplots)**

**Description:**

     This function draws symbols on a plot.  One of six symbols;
     _circles_, _squares_, _rectangles_, _stars_, _thermometers_, and
     _boxplots_, can be plotted at a specified set of x and y
     coordinates.  Specific aspects of the symbols, such as relative
     size, can be customized by additional parameters.

**Usage:**

     symbols(x, y = NULL, circles, squares, rectangles, stars,
             thermometers, boxplots, inches = TRUE, add = FALSE,
             fg = par("col"), bg = NA,
             xlab = NULL, ylab = NULL, main = NULL,
             xlim = NULL, ylim = NULL, ...)
     
**Arguments:**

**x, y**: the x and y co-ordinates for the centres of the symbols.
          They can be specified in any way which is accepted by
          ‘xy.coords’.

**circles**: a vector giving the radii of the circles.

**squares**: a vector giving the length of the sides of the squares.

**rectangles**: a matrix with two columns.  The first column gives widths and the second the heights of rectangles.

**stars**: a matrix with three or more columns giving the lengths of the rays from the center of the stars.  ‘NA’ values are replaced  by zeroes.

**fg**: colour(s) the symbols are to be drawn in.

**bg**: if specified, the symbols are filled with colour(s), the vector ‘bg’ being recycled to the number of symbols.  The default is to leave the symbols unfilled.

**xlab**: the x label of the plot if ‘add’ is not true.  Defaults to the ‘deparse’d expression used for ‘x’.

**ylab**: the y label of the plot.  Unused if ‘add = TRUE’.

**main**: a main title for the plot.  Unused if ‘add = TRUE’.

**xlim**: numeric vector of length 2 giving the x limits for the plot. Unused if ‘add = TRUE’.

**ylim**: numeric vector of length 2 giving the y limits for the plot.  Unused if ‘add = TRUE’.

**...** : graphics parameters can also be passed to this function, as
          can the plot aspect ratio ‘asp’ (see ‘plot.window’).

**Examples**:

.. code:: R

     N <- nrow(trees)
     with(trees, {
     ## Girth is diameter in inches
     symbols(Height, Volume, circles = Girth/24, inches = FALSE,
             main = "Trees' Girth") # xlab and ylab automatically
     ## Colours too:
     op <- palette(rainbow(N, end = 0.9))
     symbols(Height, Volume, circles = Girth/16, inches = FALSE, bg = 1:N,
             fg = "gray30", main = "symbols(*, circles = Girth/16, bg = 1:N)")
     palette(op)
     })
     

