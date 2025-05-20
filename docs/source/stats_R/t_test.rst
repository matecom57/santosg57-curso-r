t.test {stats}
==============

Realiza pruebas t de una y dos muestras en vectores de datos.

.. code:: R

   ## Default S3 method:
   t.test(x, y = NULL,
       alternative = c("two.sided", "less", "greater"),
       mu = 0, paired = FALSE, var.equal = FALSE,
       conf.level = 0.95, ...)

   ## S3 method for class 'formula'
   t.test(formula, data, subset, na.action = na.pass, ...)


Ejemplos:

.. code:: R

   ## Two-sample t-test
   t.test(1:10, y = c(7:20))      # P = .00001855
   t.test(1:10, y = c(7:20, 200)) # P = .1245    -- NOT significant anymore

   ## Traditional interface
   with(mtcars, t.test(mpg[am == 0], mpg[am == 1]))

   ## Formula interface
   t.test(mpg ~ am, data = mtcars)

   ## One-sample t-test
   ## Traditional interface
   t.test(sleep$extra)

   ## Formula interface
   t.test(extra ~ 1, data = sleep)

   ## Paired t-test
   ## The sleep data is actually paired, so could have been in wide format:
   sleep2 <- reshape(sleep, direction = "wide",
                  idvar = "ID", timevar = "group")

   ## Traditional interface
   t.test(sleep2$extra.1, sleep2$extra.2, paired = TRUE)

   ## Formula interface
   t.test(Pair(extra.1, extra.2) ~ 1, data = sleep2)

