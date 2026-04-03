Matrices
========

Una **matriz** es una estructura de datos definida como:

.. math::

   \begin{pmatrix}
   a_{11} & a_{12} & \cdots  & a_{1n}  \\
   a_{21} & a_{22} & \cdots  & a_{2n}  \\
   \cdots & \cdots & \ddots  & \cdots  \\
   a_{m1} & a_{m2} & \cdots  & a_{mn}  \\
   \end{pmatrix}

donde :math:`a_{i,j} \in \mathbb{R}` para i=1...m y j=1,...,n

Decimos que la matriz es de tamaño :math:`m \times n`

Utilizamos la función ``matrix()`` para definir matrices.

Ejemplos.

.. code:: R

   matrix(c(1,2,3,4,5,6,7,8,9,10,11,12), ncol=3)
   matrix(rep(1,12), ncol=3)

**Operaciones en matrices:**

.. code:: R

   A <- matrix(1:6, ncol=2)
   B <- matrix(c(2,-2, 3,3,-1,2), ncol=2)

   C <- A^2
   D <- A+6
   E <- A-B
   F <- A*B
   G <- A^B
   H <- A/B
   I <- 5*A-.1*B

**Sacando elementos de matriz**

.. code:: R
   
   A <- matrix(1:24, ncol=4)
   B <- A[c(1,3),]
   C <- A[,3:4]
   D <- A[2,3]

**Modificando elementos de una matrix**

.. code:: R

   x1 = c(50,50,50,50,50,50,50,50,50,50)
   x2 = c(50,40,40,40,40,40,40,40,40,50)
   x3 = c(50,40,30,30,30,30,30,30,40,50)
   x4 = c(50,40,30,20,20,20,20,30,40,50)
   x5 = c(50,40,30,20,10,10,20,30,40,50)
   img = matrix(c(x1,x2,x3,x4,x5,x5,x4,x3,x2,x1), ncol=10)
   image(img)

   ma = max(img)
   imgt = 50-img
   image(imgt)

   ix = sample(1:10,20, replace = T)
   iy = sample(1:10,20, replace = T)

   for (i in 1:10){
      imgt[ix[i], iy[i]] = 25
   }

   image(imgt)

   imgN = cbind(img, imgt)
   image(imgN)

**Funciones utilizadas**

**cbind** -  vectores o matrices con el mismo número de filas se pueden unir con esta función.

**rbind** - vectores o matrices con el mismo número de columnas se pueden unir con esta función. 

