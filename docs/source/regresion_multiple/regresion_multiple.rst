REGRESIÓN MÚLTIPLE Y CORRELACIÓN
================================

Esta tema  proporciona extensiones de los modelos de **regresión lineal simple** y **correlación bivariada**.


* Comprender cómo incluir más de una variable independiente en una ecuación de regresión.
* Ser capaz de obtener un modelo de regresión múltiple y utilizarlo para hacer predicciones.
* Ser capaz de evaluar los coeficientes de regresión múltiple y la idoneidad del modelo de regresión.
* Comprender cómo calcular e interpretar coeficientes de correlación múltiple.

Introducción
------------

En general, deberíamos poder mejorar nuestra capacidad de predicción incluyendo más variables independientes en dicha ecuación. 

**Por ejemplo**

 * Un investigador puede descubrir que las puntuaciones de inteligencia de los individuos pueden predecirse a partir de factores físicos como el orden de nacimiento, el peso al nacer y la duración de la gestación, junto con ciertos factores ambientales hereditarios y externos.

* La respuesta de un animal de experimentación a algún fármaco puede depender del tamaño de la dosis y de la edad y peso del animal.

* Un supervisor de enfermería puede estar interesado en la solidez de la relación entre el desempeño de una enfermera en el trabajo, la puntuación en el examen de la junta estatal, el historial académico y la puntuación en alguna prueba de rendimiento o aptitud.

El modelo de regresion lineal multiple
--------------------------------------

En el modelo de regresión múltiple suponemos que existe una relación lineal entre alguna variable Y, a la que llamamos variable dependiente, y k variables independientes, :math:`X_1, X_2,. . . , X_k`. A las variables independientes a veces se les llama variables explicativas, debido a su uso para explicar la variación en Y. También se les llama variables predictoras, debido a su uso para predecir Y.

Suposiciones
------------

Modelo Matemático
-----------------

.. math::

   y_j = \beta_0 + \beta_1 x_{1j} +  \beta_2 x_{2j} + ... +  \beta_k x_{kj} + \varepsilon_j


Obtencion de la ecuacion de regresion multiple
----------------------------------------------

.. math::

   \sum \varepsilon_j^2 = \sum (y_j - \beta_0 - \beta_1 x_{1j} - \beta_2 x_{2j} - ... - \beta_k x_{kj})^2

.. mat::

    \sum \varepsilon_j^2 = \summ(y_j - \hat{y}_j)^2



**EXAMPLE 10.3.1**

Researchers Jansen and Keller (A-1) used age and education level to predict the capacity to direct attention (CDA) 
in elderly subjects. CDA refers to neural inhibitory mechanisms that focus the mind on what is meaningful while 
blocking out distractions. The study collected information on 71 community-dwelling older women with normal mental 
status. The CDA measurement was calculated from results on standard visual and auditory measures requiring the 
inhibition of competing and distracting stimuli. In this study, CDA scores ranged from -7.65 to 9.61 with higher 
scores corresponding with better attentional functioning. The measurements on CDA, age in years, and education 
level (years of schooling) for 71 subjects are shown in Table 10.3.1. We wish to obtain the sample multiple 
regression equation.


Antes de analizar los datos utilizando técnicas de regresión múltiple, es útil construir gráficos de las relaciones entre las variables. Esto se logra haciendo gráficos separados de cada par de variables, (X1, X2), (X1, Y) y (X2, Y). 

**Solucion.**

.. math::

   \hat{y}_i = 5.49 - .184 x_{1j} + .611 x_{2j}

Evaluando la Ecuacion de Regresion Multiple
-------------------------------------------

Antes de utilizar una ecuación de regresión múltiple para predecir y estimar, es deseable determinar primero si, de hecho, vale la pena usarla. 

l evaluar una ecuación de regresión múltiple centramos nuestra atención en el coeficiente de determinación múltiple y los coeficientes de regresión parcial.


El coeficiente de determinacion multiple
----------------------------------------

La variación total presente en los valores de Y se puede dividir en dos componentes: la variación explicada, que mide la cantidad de variación total que se explica por la superficie de regresión ajustada, y la variación no explicada, que es la parte de la variación total que no se explica. explicado ajustando la superficie de regresión.


El coeficiente de determinacion multiple, 

.. math::
   
   R_{y.12...k}^2 = \frac{\hat{y}_j - \bar{y})^2}{\sum (y_j - \bar{y})^2} = \frac{SSR}{SST}


El valor de :math:`R_{y.12...k}^2`  indica qué proporción de la variación total en los valores de Y observados se explica por la regresión de Y en :math:`X_1, X_2, ... , X_k`. En otras palabras, podemos decir que :math:`R_{y.12...k}^2` es una medida de la bondad de ajuste de la superficie de regresión. 

**EJEMPLO 10.4.1**

Refer to Example 10.3.1. Compute R 2y .12.

Referirse al Ejemplo 10.3.1 calcular :math:`R_{y.12}^2`

.. math::

   R_{y.12}^2 = .3706

Testing the Regression Hypothesis 
---------------------------------

Para determinar si la regresión general es significativa (es decir, para determinar si :math:`R_{y.12}^2`  es significativa), podemos realizar una prueba de hipótesis de la siguiente manera.

**EJEMPLO 10.4.2**





