Ejemplo
======

.. code:: R

   datos <- read.csv('heart.data.csv', header=T)

   print(names(datos))

   res <- lm(heart.disease ~ biking + smoking, data = datos)

   print(summary(res))

   attach(datos)

   x = biking
   y = smoking
   w = heart.disease
   sx = sum(x)
   sy = sum(y)
   sx2 = sum(x*x)
   sy2 = sum(y*y)
   sxy = sum(x*y)
   n = length(x)
   sw = sum(w)
   sxw = sum(x*w)
   syw = sum(y*w)

   mat = matrix(c(n, sx, sy, sx, sx2, sxy, sy, sxy, sy2), ncol=3)
   matI = solve(mat)

   print(matI)

   x = matI %*% c(sw, sxw, syw)
   print(x)


Los datos se pueden bajar `AQUÍ <https://www.dropbox.com/scl/fo/6kg6bbglwzydj7l9vw3bs/AApF61cRDVeOodKQfKBlmNA?rlkey=l2523j49xhtw2oxq2uvyq7hy9&st=m4oeowxv&dl=0>`_
