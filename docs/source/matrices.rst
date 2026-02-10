Matrices
========

Una matriz es una estructura de datos definida como:

.. math::

   \begin{pmatrix}
   a_{11} & a_{12} & \cdots  & a_{1n}  \\
   a_{21} & a_{22} & \cdots  & a_{2n}  \\
   \cdots & \cdots & \ddots  & \cdots  \\
   a_{m1} & a_{m2} & \cdots  & a_{mn}  \\
   \end{pmatrix}

donde :math:`a_{i,j} \in \mathbb{R}` para i=1...m y j=1,...,n

Decimos que la matriz es de tamaño :math:`m \times n`

Utilizamos la función **mtrix()** para definir matrices.

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

**Sacando elementos de matriz**

.. code:: R
   
   A <- matrix(1:12, ncol=3)
   B <- A[c(1,3),]
   C <- A[,3]
   D <- A[2,3]

