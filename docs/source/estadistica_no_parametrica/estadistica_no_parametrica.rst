Estadística No Paramétrica y Libre de Distribución
==================================================

Este capítulo explora una amplia variedad de técnicas que son útiles cuando se violan los supuestos 
subyacentes de las pruebas de hipótesis tradicionales o se desea realizar una prueba sin hacer suposiciones 
sobre la población muestreada.

Introducción
------------

La mayoría de los procedimientos de inferencia estadística que hemos analizado hasta ahora se clasifican como 
estadística paramétrica. Una excepción es nuestro uso de la chi-cuadrado, como prueba de bondad de ajuste y de 
independencia. Estos usos de la chi-cuadrado se clasifican como estadística no paramétrica.

La pregunta obvia ahora es: "¿Cuál es la diferencia?". Para responder, recordemos la naturaleza de los 
procedimientos inferenciales que hemos categorizado como paramétricos. En cada caso, nuestro interés se centró 
en estimar o contrastar una hipótesis sobre uno o más parámetros poblacionales. Además, era fundamental para 
estos procedimientos conocer la forma funcional de la población de la que se extrajeron las muestras que 
sirvieron de base para la inferencia.

Un ejemplo de prueba estadística paramétrica es la ampliamente utilizada prueba t. Los usos más comunes de 
esta prueba son para contrastar una hipótesis sobre una sola media poblacional o la diferencia entre dos 
medias poblacionales. Uno de los supuestos que sustentan el uso válido de esta prueba es que la población o 
poblaciones muestreadas tienen una distribución al menos aproximadamente normal.

Como aprenderemos, los procedimientos que analizamos en este capítulo no se refieren a parámetros 
poblacionales o no dependen del conocimiento de la población muestreada. En sentido estricto, solo los 
procedimientos que contrastan hipótesis que no son afirmaciones sobre parámetros poblacionales se clasifican 
como no paramétricos, mientras que aquellos que no hacen suposiciones sobre la población muestreada se 
denominan procedimientos de distribución libre. A pesar de esta distinción, se suele usar los términos no 
paramétrico y de distribución libre indistintamente y analizar los diversos procedimientos de ambos tipos bajo 
el título de estadística no paramétrica. Seguiremos esta convención.

Escalas de Medición
-------------------

La Prueba del Signo
-------------------


La conocida prueba ``t`` no es estrictamente válida para probar`: 

(1) la hipótesis nula de que la media poblacional es igual a un valor particular, ni 

(2) la hipótesis nula de que la media de una población de diferencias entre 
pares de mediciones es igual a cero, a menos que las poblaciones relevantes tengan una distribución al menos 
aproximadamente normal. 

Cuando no se pueden realizar los supuestos de normalidad o cuando los datos 
disponibles son rangos en lugar de mediciones en una escala de intervalos o razones, el investigador puede 
optar por un procedimiento opcional. Aunque se sabe que la prueba ``t`` es bastante insensible a las 
violaciones 
del supuesto de normalidad, en ocasiones es conveniente una prueba alternativa.

Una prueba no paramétrica de uso frecuente que no depende de los supuestos de la prueba ``t`` es la prueba de 
signos. Esta prueba se centra en la ``mediana``, en lugar de la ``media``, como medida de tendencia central o 
ubicación. La mediana y la media serán iguales en distribuciones simétricas. El único supuesto subyacente a la 
prueba es que la distribución de la variable de interés es continua. Este supuesto descarta el uso de datos 
nominales.

``La prueba del signo`` recibe su nombre porque los signos positivos y negativos, en lugar de los valores 
numéricos, proporcionan los datos brutos utilizados en los cálculos. Ilustramos el uso de la prueba del signo, 
primero con una sola muestra y luego con un ejemplo con muestras pareadas.

**Ejemplo 13_3.1**

Los investigadores deseaban saber si la instrucción en cuidado y aseo personal mejoraría la apariencia de 
niñas con discapacidad intelectual. En una escuela para personas con discapacidad intelectual, 10 niñas 
seleccionadas al azar recibieron instrucción especial en cuidado y aseo personal. Dos semanas después de 
completar el curso, una enfermera y un trabajador social entrevistaron a cada una de ellas, quienes les 
asignaron una puntuación basada en su apariencia general. Los investigadores consideraron que las puntuaciones 
alcanzaban el nivel de una escala ordinal. Consideraron que, si bien una puntuación de, por ejemplo, 8 
representaba una mejor apariencia que una de 6, no estaban dispuestos a afirmar que la diferencia entre las 
puntuaciones de 6 y 8 fuera igual a la diferencia entre, por ejemplo, las puntuaciones de 8 y 10; ni que la 
diferencia entre las puntuaciones de 6 y 8 representara el doble de mejora que la diferencia entre las 
puntuaciones de 5 y 6. Las puntuaciones se muestran en la Tabla 13.3.1. Deseamos saber si podemos concluir que 
la puntuación mediana de la población de la que suponemos que se extrajo esta muestra es diferente de 5.


Prueba del Signo: datos Pareados
--------------------------------

Cuando los datos a analizar consisten en observaciones en pares coincidentes y no se cumplen los supuestos 
subyacentes a la prueba t, o la escala de medición es débil, se puede emplear la prueba de signos para probar 
la hipótesis nula de que la diferencia mediana es 0. Una forma alternativa de enunciar la hipótesis nula es

.. math::

   P(X_i >  Y_i) = P(X_i < Y_i) = .5

Por ejemplo, una de las puntuaciones coincidentes se resta de la otra. Si es menor que el signo de la 
diferencia y si es mayor que el signo de la diferencia. Si la diferencia mediana es 0, esperaríamos que un par 
elegido al azar tuviera la misma probabilidad de producir un valor de como de cuando se realiza la resta. 
Podemos enunciar la hipótesis nula, entonces, como

.. math::

   H_0: P(+)  = P(-) = .5



