Recta de Regresion por el Metodo de Minimos Cuadrados
=====================================================

La regresión lineal permite definir la recta que mejor se ajusta a una nube de puntos. Gráficamente:

.. image:: Rplots.pdf

Este método de regresión por mínimos cuadrados es una estrategia adicional para ajustar adecuadamente el comportamiento o la tendencia general de los datos a través de una recta que minimice la suma de los cuadrados de las distancias verticales de los puntos a la recta.

 

Para obtener una recta de la forma:

.. math::

   y = a + bx

donde  es la variable dependiente y  es la variable independiente. Sus coeficientes representan:

Este método se basa en la aplicación de las siguientes expresiones:

.. math::

   a = \frac{\sum_{i=1}^n x_i \cdot \sum_{i=1}^n x_i y_i - \sum_{i=1}^n y_i \cdot \sum_{i=1}^n (x_i)^2}{(\sum_{i=1}^n x_i)^2-n \sum_{i=1}^n (x_i)^2}
 
   b = \frac{n \cdot \sum_{i=1}^n x_iy_i \cdot-  \sum_{i=1}^n x_i \cdot \sum_{i=1}^n y_i}{n \sum_{i=1}^n (x_i)^2 - (\sum_{i=1}^n x_i)^2}


