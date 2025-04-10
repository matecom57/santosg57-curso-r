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


**Ejemplo 1.** 

Consideremos la muestra y chequemos las prueba estadística: :math:`H_o: \mu = 58` con :math:`H_a: \mu \neq 58`

58 51 58 56 61 58 47 44 57 64 48 44

Utilizando la funcion ``t.test()`` obtenemos:

.. code:: R

	One Sample t-test

   data:  muestra
   t = -2.1331, df = 11, p-value = 0.05628
   alternative hypothesis: true mean is not equal to 58
   95 percent confidence interval:
      49.53399 58.13267
   sample estimates:
   mean of x 
   53.83333 


Ahora utilizando la teoría matemática de estadistica se tiene:

.. math:

   \sigma_{\bar{x}} = \frac{\sigma}{\sqrt{n}}



t = \frac{\bar{x} - \mu_o}{\sigma_{\bar{x}}}

   \alpha = 0.05

   t=  -2.133065 

   pvalue= 2*pt(t, 11) =  0.05627924
 
   Intervalo de confianza: [\bar{x} - qt(\alpha/2)*\sigma_{\bar{x}}, \bar{x} + qt(\alpha/2)*\sigma_{\bar{x}}] = [ 49.53399  ,  58.13267 ]

