nifti
=====

El formato NIfTI (Neuroimaging Informatics Technology Initiative) es un estándar abierto, ampliamente usado en neuroimagen (RM, TC, PET) 
para almacenar datos volumétricos 3D y 4D. Utiliza archivos .nii o .nii.gz (comprimidos) que incluyen cabeceras con información espacial 
precisa y orientación (matriz afín), mejorando el formato ANALYZE 7.5 al solucionar ambigüedades de orientación. 

**Características Principales del Formato NIfTI:**

* **Estructura del archivo**: Puede ser un único archivo con extensión .nii que contiene tanto la cabecera como los datos de la imagen, o 
dos archivos separados: .hdr (cabecera/metadatos) y .img (datos de vóxeles).

* **Orientación Espacial**: La característica clave es que almacena la información de orientación espacial (transformación de vóxel a coordenadas físicas) en el encabezado, lo que facilita la visualización y el análisis.

* **Uso**: Es el formato estándar en herramientas de análisis como FSL, SPM, AFNI y software médico para visualizar imágenes cerebrales. 


**Software**
 
https://cran.r-project.org/web/packages/RNifti/index.html

.. code:: R

   install.packages('RNifti')

**Ejemplo** Lectura de datos:

.. code:: R

   library(RNifti)

   img <- readNifti("sub-01_T1w.nii.gz")

   print(typeof(img))
   print(class(img))

   print(dim(img))


**Ejercicio** Bajar las imágenes que se encuentran en dropbox en la dirección URL:

https://www.dropbox.com/scl/fo/k2m1sxy8s4ko4tt7xq5ke/AG7zaZiOeuOOlBlNpwbNmeA?rlkey=6q0dsfja56mt0lipskrznxt8e&st=vskwxtso&dl=0

Para el archivo: sub-01_T1w.nii.gz responder lo siguiente:

1. El tamaño del volumen.

2. Despregar en una ventana las vistas coronal, axial y sagital en alguna posición (i0, j0, k0) en el volumen. 

3. Hacer el histograma del volumen.

4. Encontrar de manera aproximada un intervalo de tonos de gris donde se encuentra el cuerpo calloso, es decir los tonos de gris.

Para el archivo: sub-01_task-restaurative_bold.nii.gz responder lo siguiente:

1. El tamaño del volumen.

2. Cuantos volúmenes tiene el archivo.

3. Tomar un punto fijo P0(i0, j0, k0) dentro del cerebro y tomar la señal de este punto. Hacer un histograma de las 
correlaciones de todas las señales a P0 dentro de una vecindad de P0.

 


