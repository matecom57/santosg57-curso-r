Análisis de Varianza
====================

**DISEÑO COMPLETAMENTE ALEATORIO**

Tabla de valores muestrales para un Diseño Completamenta Aleatorio

.. math::

   \begin{matrix}
   & 1 & 2 & 3 & ... & k \\
   \hline
   & x_{11} & x_{12} & x_{13} & ... & x_{1k} \\
   & x_{21} & x_{22} & x_{23} & ... & x_{2k} \\
   & x_{31} & x_{32} & x_{33} & ... & x_{3k} \\
   & \vdots & \vdots  & \vdots & \vdots & \vdots \\
   & x_{n1} & x_{n2} & x_{n3} & ... & x_{nk} \\
   \hline
   Total & T_{.1} & T_{.2} & T_{.3} & ... & T_{.k} & T_{..} \\
   \hline
   Media & \bar{x}_{.1} & \bar{x}_{.2} & \bar{x}_{.3} & ... & \bar{x}_{.k} & \bar{x}_{..} \\
   \hline
   \end{matrix}

Este diseño se puede escribir matemáticamente como:

.. math::

   x_{ij} = 𝜇+ \tau_𝑗+ \varepsilon_{} ij\hspace{2cm}\\ttxt{j = 1,2,...,k}


Los terminos en este modelo son definidos como sigue:

1. :math:`\mu` representa la media de todas las k medias poblacionales y se denomina media general.

2. :math:`\tau_j` representa la diferencia entre la media de la j-ésima población y la media general y se denomina 
efecto del tratamiento.

3. :math:`\varepsilon_{ij}` representa la cantidad en la que una medición individual difiere de la media de la 
población a la que pertenece y se denomina término de error.


**Hipotesis:**

.. math::

   H_0 : \mu_1 =  \mu_2 = ... =  \mu_k

   H_A : \text{ no todos los } \mu_j \text{ son iguales.}



