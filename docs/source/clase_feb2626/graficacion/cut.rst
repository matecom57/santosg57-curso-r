cut           
====

**Convert Numeric to Factor**

**Description:**

     ‘cut’ divides the range of ‘x’ into intervals and codes the values
     in ‘x’ according to which interval they fall.  The leftmost
     interval corresponds to level one, the next leftmost to level two
     and so on.

**Usage:**

     cut(x, ...)
     
     ## Default S3 method:
     cut(x, breaks, labels = NULL,
         include.lowest = FALSE, right = TRUE, dig.lab = 3,
         ordered_result = FALSE, ...)
     
**Arguments**

**x**: a numeric vector which is to be converted to a factor by cutting.

**breaks**: either a numeric vector of two or more unique cut points or a single number (greater than or equal to 2) giving the number of 
intervals into which ‘x’ is to be cut.

**labels**: labels for the levels of the resulting category.  By default, labels are constructed using ‘"(a,b]"’ interval notation.  If 
‘labels = FALSE’, simple integer codes are returned instead of a factor.

**Examples:**

.. code:: R

     Z <- stats::rnorm(10000)
     table(cut(Z, breaks = -6:6))
     sum(table(cut(Z, breaks = -6:6, labels = FALSE)))
     sum(graphics::hist(Z, breaks = -6:6, plot = FALSE)$counts)
     
     cut(rep(1,5), 4) #-- dummy
     tx0 <- c(9, 4, 6, 5, 3, 10, 5, 3, 5)
     x <- rep(0:8, tx0)
     stopifnot(table(x) == tx0)
     
     table( cut(x, breaks = 8))
     table( cut(x, breaks = 3*(-2:5)))
     table( cut(x, breaks = 3*(-2:5), right = FALSE))
     
     ##--- some values OUTSIDE the breaks :
     table(cx  <- cut(x, breaks = 2*(0:4)))
     table(cxl <- cut(x, breaks = 2*(0:4), right = FALSE))
     which(is.na(cx));  x[is.na(cx)]  #-- the first 9  values  0
     which(is.na(cxl)); x[is.na(cxl)] #-- the last  5  values  8
     
     
     ## Label construction:
     y <- stats::rnorm(100)
     table(cut(y, breaks = pi/3*(-3:3)))
     table(cut(y, breaks = pi/3*(-3:3), dig.lab = 4))
     
     table(cut(y, breaks =  1*(-3:3), dig.lab = 4))
     # extra digits don't "harm" here
     table(cut(y, breaks =  1*(-3:3), right = FALSE))
     #- the same, since no exact INT!
     
     
     

