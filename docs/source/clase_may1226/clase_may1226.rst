Clase may1226
=============

**Algunas funciones**

**gl** - Generar factores especificando el patrón de sus niveles.

.. code:: R

   gl(n, k, length = n*k, labels = seq_len(n), ordered = FALSE)

donde:


**n** - un número entero que indica la cantidad de niveles.

**k** - un número entero que indica la cantidad de réplicas.

**length** - un número entero que indica la longitud del resultado.

**labels** - un vector opcional de etiquetas para los niveles de factor resultantes.

**ordered** - un valor lógico que indica si el resultado debe ordenarse o no.

.. code:: R

   gl(2, 8, labels = c("Control", "Treat"))

   gl(2, 1, 20)

   gl(2, 2, 20)

**by** - La función `by` es una envoltura orientada a objetos para `tapply` aplicada a data frames.

.. code:: R

   by(data, INDICES, FUN, ..., simplify = TRUE)

donde:

data - es un dataframe o una matriz

INDICES - un factor o una lista de factores, cada uno de longitud nrow(data). 

FUN - una funcion para ser aplicada a grupos de datos

**Ejemplos**

.. code:: R

   by(iris[,1:4], iris[,5], summary)

   by(mtcars[,1], mtcars[,2], mean)

   by(mtcars[,1], mtcars[,11], mean)

**Ejemplos**

**EXAMPLE 7.4.1**

John M. Morton y col. (A-14) examinaron la función de la vesícula biliar antes y después de la fundoplicatura —una 
cirugía utilizada para evitar que el contenido del estómago regrese al esófago (reflujo)— en pacientes con enfermedad 
por reflujo gastroesofágico. Los autores midieron la funcionalidad de la vesícula biliar calculando la fracción de 
eyección de la vesícula biliar (FEVB) antes y después de la fundoplicatura. El objetivo de la fundoplicatura es aumentar 
la FEVB, que se mide como un porcentaje. Los datos se muestran en la Tabla 7.4.1. Queremos saber si estos datos 
proporcionan evidencia suficiente para permitirnos concluir que la fundoplicatura aumenta la función de la FEVB.

**Datos**

.. code:: R

   Preop (%) : 22, 63.3, 96, 9.2, 3.1, 50, 33, 69, 64, 18.8, 0, 34
   Postop (%): 63.5, 91.5, 59, 37.8, 10.1, 19.6, 41, 87.8, 86, 55, 88, 40

   t.test(Preop, Postop , paired=T, alternative='less')

**7.4.3**

El objetivo de la investigación realizada por Morley et al. (A-17) fue evaluar la eficacia analgésica de una dosis 
diaria de metadona oral en pacientes con síndromes de dolor neuropático crónico. Los investigadores utilizaron una 
escala analógica visual (0-100 mm, donde un número mayor indica mayor dolor) para calificar la intensidad máxima del 
dolor a lo largo del día. Cada participante tomó 20 mg de metadona o un placebo diariamente durante 5 días. Los 
participantes desconocían qué tratamiento estaban recibiendo. La siguiente tabla muestra las puntuaciones medias de 
intensidad máxima del dolor para los 5 días con metadona y los 5 días con placebo. ¿Estos datos proporcionan evidencia 
suficiente, con un nivel de significancia de 0,05, para indicar que, en general, la intensidad máxima del dolor es menor 
en los días en que se toma metadona?

.. code:: R

   Placebo: 57.2, 69.8, 98.2, 62.4, 67.2, 70.6, 67.8, 95.6, 98.4, 63.2, 63.6
   Methadone: 29.8, 73.0, 98.6, 58.8, 60.6, 57.2, 57.2, 89.2, 97.0, 49.8, 37.0

   t.test(Placebo, Methadone, paired=T, alternative='greater')

**EXAMPLE 7.8.2**

Utilizando los datos del Ejemplo 7.3.2, nos interesa comprobar si se puede asumir la igualdad de varianzas antes de 
realizar una prueba t. Para facilitar la explicación, los datos se reproducen a continuación (Tabla 7.8.1):

.. code::  R

   Control: 131, 115, 124, 131, 122, 117, 88, 114, 150, 169
   SCI: 60, 150, 130, 180, 163, 130, 121, 119, 130, 148

   var.test(Control, SCI)



