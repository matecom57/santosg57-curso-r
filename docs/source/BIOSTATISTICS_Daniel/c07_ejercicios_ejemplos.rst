c07. Prueba de Hipótesis
========================

**DEFINICIÓN**

Una hipótesis puede definirse simplemente como una pregunta acerca de un parámetro de  una o más poblaciones.


En una pregunta de investigación y utilizando estadistica para llegar a un conclusión de la pregunta, escribimos 
la pregunta en terminos de dos hipótesis, una la que deseamos probar llamada la "Hipótesis Nula"
y la otra llamada "Hipótesis Alterna". En terminos matemáticos estas hipótesis se escriben utilizando los simbolos =, < y >.

**Reglas para enunciar hipótesis estadísticas**

La hipótesis nula se escribe en terminos de igualdad (ya sea =, :math:`\leq`, o :math:`\geq`) 
y (:math:`\neq`, < y >) para
la hipotesis alterna.
 
* Supongamos, por ejemplo, que queremos responder a la pregunta: ¿Podemos concluir que cierta media poblacional no es 50? 
La hipótesis nula es

.. math:: 
  
   H_0: \ \ \mu = 50

y la alternativa es

.. math::

   H_A: \ \ \mu \neq 50

* Supongamos que queremos saber si podemos concluir que la media poblacional es mayor que 50. Nuestras hipótesis son:

.. math::

   H_0: \ \ \mu \leq 50 \ \ , \ \ H_A: \mu > 50

* Si queremos saber si podemos concluir que la media poblacional es menor que 50, las hipótesis son:

.. math::

   H_0: \ \ \mu \geq 50 \ \ , \ \  H_A: \mu < 50


**Pasos para la comprobación de hipótesis**


Para mayor comodidad, la comprobación de hipótesis se presentará como un procedimiento de diez pasos. Este formato no tiene nada de mágico ni sagrado; simplemente desglosa el proceso en una secuencia lógica de acciones y decisiones.

1. **Datos.** Es fundamental comprender la naturaleza de los datos que constituyen la base de los procedimientos de prueba, ya que esto determina la prueba específica que se empleará. Por ejemplo, es necesario determinar si los datos consisten en recuentos o mediciones.

2. **Supuestos.** Como vimos en el capítulo sobre estimación, los diferentes supuestos modifican los intervalos de confianza. Lo mismo ocurre en las pruebas de hipótesis: un procedimiento general se modifica según los supuestos. De hecho, los mismos supuestos que son importantes en la estimación también lo son en las pruebas de hipótesis. Hemos visto que estos incluyen supuestos sobre la normalidad de la distribución poblacional, la igualdad de varianzas y la independencia de las muestras.

3. **Hipótesis.** En la prueba de hipótesis intervienen dos hipótesis estadísticas que deben enunciarse explícitamente. La hipótesis nula es la que se va a probar. Se designa con el símbolo . A veces se la denomina hipótesis de no diferencia, ya que es una afirmación de conformidad con (o ausencia de diferencia con) las condiciones que se presumen verdaderas en la población de interés. En general, la hipótesis nula se plantea con el propósito expreso de ser refutada. Por consiguiente, el complemento de la conclusión a la que el investigador busca llegar se convierte en el enunciado de la hipótesis nula. En el proceso de prueba, la hipótesis nula se rechaza o no se rechaza. Si la hipótesis nula no se rechaza, diremos que los datos en los que se basa la prueba no proporcionan evidencia suficiente para provocar el rechazo. Si el procedimiento de prueba conduce al rechazo, diremos que los datos disponibles no son compatibles con la hipótesis nula, pero apoyan alguna otra hipótesis. La hipótesis alternativa es una afirmación de lo que creeremos que es verdadero si nuestros datos de muestra nos llevan a rechazar la hipótesis nula. Generalmente, la hipótesis alternativa y la hipótesis de investigación son la misma, y ​​de hecho, ambos términos se usan indistintamente. Designaremos la hipótesis alternativa con el símbolo HA.

Reglas para enunciar hipótesis estadísticas Cuando las hipótesis son del tipo considerado en este capítulo, debe aparecer una indicación de igualdad (ya sea o ) en la hipótesis nula. Supongamos, por ejemplo, que queremos responder a la pregunta: ¿Podemos concluir que cierta media poblacional no es 50? La hipótesis nula es

.. math::

   H_0: \ \ \mu = 50

y la alternativa es

.. math::

   H_A: \ \ \mu \neq 50

Supongamos que queremos saber si podemos concluir que la media poblacional es mayor que 50. Nuestras hipótesis son:

.. math::

   H_0: \mu \leq 50 \hspace{1cm} H_A: \mu > 50

Si queremos saber si podemos concluir que la media poblacional es menor que 50, las hipótesis son:

.. math::
   
   H_0: \mu \geq 50 \hspace{1cm} H_A: \mu < 50 

En resumen, podemos enunciar las siguientes reglas generales para decidir qué afirmación va en la hipótesis nula y qué afirmación va en la hipótesis alternativa:

(a) Lo que esperas o prevés poder concluir como resultado de la prueba generalmente debe colocarse en la hipótesis alternativa.

(b) La hipótesis nula debe contener una declaración de igualdad, ya sea o

(c) The null hypothesis is the hypothesis that is tested.

(c) La hipótesis nula es la hipótesis que se prueba.

(d) Las hipótesis nula y alternativa son complementarias. Es decir, ambas juntas agotan todas las posibilidades con respecto al valor que puede asumir el parámetro hipotetizado.

Una advertencia: Cabe señalar que ni las pruebas de hipótesis ni la inferencia estadística, en general, conducen a la demostración de una hipótesis; simplemente indican si la hipótesis está respaldada o no por los datos disponibles. Por lo tanto, cuando no rechazamos una hipótesis nula, no decimos que sea verdadera, sino que podría serlo. Al hablar de aceptar una hipótesis nula, tenemos presente esta limitación y no deseamos transmitir la idea de que aceptarla implique su demostración.

4. *Estadística de prueba.** El estadístico de prueba es un estadístico que se puede calcular a partir de los datos de la muestra. Por regla general, existen muchos valores posibles que puede tomar el estadístico de prueba, y el valor observado depende de la muestra específica extraída. Como veremos, el estadístico de prueba sirve como un factor decisivo, ya que la decisión de rechazar o no rechazar la hipótesis nula depende de la magnitud del estadístico de prueba. Un ejemplo de estadístico de prueba es la cantidad

.. math::

   z = \frac{\bar{x} - \mu_0}{\sigma/\sqrt{n}}

donde es un valor hipotético de la media poblacional. Este estadístico de prueba está relacionado con el estadístico

.. math::

   z = \frac{\bar{x} - \mu}{\sigma/\sqrt{n}}

con los que ya estamos familiarizados

Fórmula general para el estadístico de prueba La siguiente es una fórmula general para un estadístico de prueba que será aplicable en muchas de las pruebas de hipótesis que se analizan en este libro:

.. math::

   estadística_prueba = \frac{relevant statistic - hypothesized parameter}{standard error of the relevant statistic}

En la ecuación 7.1.1, es el estadístico relevante, es el parámetro hipotético y es el error estándar de , el estadístico relevante.

**5. Distribución del estadístico de prueba.** Se ha señalado que la clave de la inferencia estadística es la distribución muestral. Esto se nos recuerda nuevamente cuando es necesario especificar la distribución de probabilidad del estadístico de prueba. La distribución del estadístico de prueba

.. math::

   z = \frac{\bar{x}-\mu_0}{}

6. **Regla de decisión.** Todos los valores posibles que puede tomar el estadístico de prueba son puntos en el eje horizontal de la gráfica de su distribución y se dividen en dos grupos: uno constituye la región de rechazo y el otro, la región de no rechazo. Los valores del estadístico de prueba que forman la región de rechazo son aquellos con menor probabilidad de ocurrir si la hipótesis nula es verdadera, mientras que los valores que forman la región de aceptación son con mayor probabilidad de ocurrir si la hipótesis nula es verdadera. La regla de decisión nos indica que debemos rechazar la hipótesis nula si el valor del estadístico de prueba calculado a partir de nuestra muestra se encuentra en la región de rechazo y que debemos no rechazarla si el valor calculado se encuentra en la región de no rechazo.

**Nivel de significancia**

La decisión sobre qué valores entran en la región de rechazo y cuáles en la de no rechazo se basa en el nivel de significancia deseado, designado por α. El término nivel de significancia refleja que las pruebas de hipótesis a veces se denominan pruebas de significancia, y se dice que un valor calculado del estadístico de prueba que cae en la región de rechazo es significativo. El nivel de significancia, α, especifica el área bajo la curva de la distribución del estadístico de prueba que se encuentra por encima de los valores en el eje horizontal que constituyen la región de rechazo.

**DEFINICIÓN**

El nivel de significancia A es una probabilidad y, de hecho, es la probabilidad de rechazar una hipótesis nula verdadera.

7. **Cálculo del estadística de prueba.** A partir de los datos contenidos en la muestra, calculamos un valor del estadístico de prueba y lo comparamos con las regiones de rechazo y no rechazo que ya se han especificado.


8. **Decisión estadística.** La decisión estadística consiste en rechazar o no rechazar la hipótesis nula. Se rechaza si el valor calculado del estadístico de prueba se encuentra en la región de rechazo, y no se rechaza si el valor calculado del estadístico de prueba se encuentra en la región de no rechazo.

9. **Conclusión.** Si se rechaza H0, concluimos que HA es verdadera. Si no se rechaza H0, concluimos que H0 podría ser verdadera.

10. **Valores p.** El valor p es un número que indica cuán inusuales son los resultados de nuestra muestra, suponiendo que la hipótesis nula sea verdadera. Un valor p que indique que es poco probable que los resultados de la muestra se hayan producido si la hipótesis nula es verdadera, justifica la duda sobre la veracidad de dicha hipótesis.

**DEFINICIÓN**

El valor p es la probabilidad de que el valor calculado de un estadístico de prueba sea al menos tan extremo como un valor específico del estadístico de prueba cuando la hipótesis nula es verdadera. Por lo tanto, el valor p es el valor más pequeño de A para el cual podemos rechazar una hipótesis nula.

**7.2 PRUEBA DE HIPÓTESIS: MEDIA DE UNA SOLA POBLACIÓN**

**EJEMPLO 7.2.3**

Nakamura et al. (A-1) estudiaron sujetos con roturas del ligamento colateral medial (LCM) y del ligamento cruzado anterior (LCA). Entre febrero de 1995 y diciembre de 1997, 17 pacientes consecutivos con lesiones agudas combinadas de LCA y LCM de grado III fueron tratados por el mismo médico en el centro de investigación. Una de las variables de interés fue el tiempo transcurrido en días entre la lesión y la primera resonancia magnética (RM). Los datos se muestran en la Tabla 7.2.1. Queremos saber si podemos concluir que el número medio de días entre la lesión y la RM inicial no es de 15 días en una población que se presume está representada por estos datos de muestra.

14, 9, 18, 26, 12

**EJEMPLO 7.2.5**


