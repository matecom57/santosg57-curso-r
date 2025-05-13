REGRESIÓN MÚLTIPLE Y CORRELACIÓN
================================

Este capítulo proporciona extensiones de los modelos de regresión lineal simple y correlación bivariada discutidos en el Capítulo 9. Los conceptos y técnicas aquí discutidos son útiles cuando el investigador desea considerar simultáneamente las relaciones entre más de dos variables. Aunque los conceptos, cálculos e interpretaciones asociados con el análisis de datos de múltiples variables pueden parecer complejos, son extensiones naturales del material explorado en capítulos anteriores.

* comprender cómo incluir más de una variable independiente en una ecuación de regresión.
* Ser capaz de obtener un modelo de regresión múltiple y utilizarlo para hacer predicciones.
* Ser capaz de evaluar los coeficientes de regresión múltiple y la idoneidad del modelo de regresión.
* comprender cómo calcular e interpretar coeficientes de correlación múltiples, bivariados y parciales.

INT
___

exploramos los conceptos y técnicas para analizar y hacer uso de la relación lineal entre dos variables. Vimos que este análisis puede conducir a una ecuación que puede usarse para predecir el valor de alguna variable dependiente dado el valor de una variable independiente asociada.


en general, deberíamos poder mejorar nuestra capacidad de predicción incluyendo más variables independientes en dicha ecuación. Por ejemplo, un investigador puede descubrir que las puntuaciones de inteligencia de los individuos pueden predecirse a partir de factores físicos como el orden de nacimiento, el peso al nacer y la duración de la gestación, junto con ciertos factores ambientales hereditarios y externos.

La respuesta de un animal de experimentación a algún fármaco puede depender del tamaño de la dosis y de la edad y peso del animal.

Un supervisor de enfermería puede estar interesado en la solidez de la relación entre el desempeño de una enfermera en el trabajo, la puntuación en el examen de la junta estatal, el historial académico y la puntuación en alguna prueba de rendimiento o aptitud.

El modelo de regresion lineal multiple
--------------------------------------

En el modelo de regresión múltiple suponemos que existe una relación lineal entre alguna variable Y, a la que llamamos variable dependiente, y k variables independientes, X1, X2,. . . , Xk. A las variables independientes a veces se les llama variables explicativas, debido a su uso para explicar la variación en Y. También se les llama variables predictoras, debido a su uso para predecir Y.

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




