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

.. math::

   \sigma_{\bar{x}} = \frac{\sigma}{\sqrt{n}}

   t = \frac{\bar{x} - \mu_o}{\sigma_{\bar{x}}}

   \alpha = 0.05

   t=  -2.133065 

   pvalue= 2*pt(t, 11) =  0.05627924

   q = qt(1-\alpha/2,11)
 
Intervalo de confianza esta dado por:

.. math::

   [ \bar{x} - q * \sigma_{\bar{x}}, \bar{x} + q * \sigma_{\bar{x}} ]  


[ 49.53399  ,  58.13267 ]

**Ejemplo: Prueba de Hipotesis de la diferencia entre dos medias poblacionales:**

Varianza poblacionales iguales:

.. math::

   s_p^2 = \frac{(n_1-1)s_1^2 + (n_2-1)s_2^2}{n_1 + n_2}

   t = \frac{(\bar{x}_1 - \bar{x}_2) - (\mu_1 - \mu_2)_0}{\sqrt{\frac{s_p^2}{n_1} + \frac{s_p^2}{n_2} }}


el cual, cuando es verdadero, es distribuido como una t-Student's H0 con :math:`n_1+n_2-2` degrees of freedom.


**Varianza Poblaciones No iguales**

.. math::

   t = \frac{(\bar{x}_1 - \bar{x}_2) - (\mu_1 - \mu_2)_0}{\sqrt{\frac{s_1^2}{n_1} + \frac{s_2^2}{n_2}}}


t_{1-(\alpha/2)} = \frac{w_1t_1 + w_2t_2}{w_1 + w_2}

donde :math:`w_1=s_1^2/n_1, w_2=s_2^2/n_2, t_1 = t_{1-(\alpha/2}`, para :math:`n_1-1` grados de libertad, y :math:`t_2=t_{1-(\alpha/2)}`
para `n_2-1` grados de libertad.
