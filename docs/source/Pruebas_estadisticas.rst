Pruebas Estadísticas
====================

t.test
------

.. code:: R

   t.test(x, y = NULL,
       alternative = c("two.sided", "less", "greater"),
       mu = 0, paired = FALSE, var.equal = FALSE,
       conf.level = 0.95, ...)

   ## S3 method for class 'formula'
   t.test(formula, data, subset, na.action = na.pass, ...)


wilcox.test
-----------

.. code:: R

   wilcox.test(x, y = NULL,
            alternative = c("two.sided", "less", "greater"),
            mu = 0, paired = FALSE, exact = NULL, correct = TRUE,
            conf.int = FALSE, conf.level = 0.95,
            tol.root = 1e-4, digits.rank = Inf, ...)

   ## S3 method for class 'formula'
   wilcox.test(formula, data, subset, na.action = na.pass, ...)

aov
---

.. code:: R

   aov(formula, data = NULL, projections = FALSE, qr = TRUE,
    contrasts = NULL, ...)


