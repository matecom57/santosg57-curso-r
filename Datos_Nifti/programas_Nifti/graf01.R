library(scatterplot3d)
# Generar datos
x <- rnorm(100)
y <- rnorm(100)
z <- rnorm(100)
# Crear color con transparencia (ej. rojo con 50% transparencia)
col_transparent <- rgb(1, 0, 0, alpha = 0.5)
# Graficar
scatterplot3d(x, y, z, color = col_transparent, pch = 16)


