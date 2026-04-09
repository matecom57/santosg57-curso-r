# 1. Instalar y cargar la librería
# install.packages("scatterplot3d")
library(scatterplot3d)

# 2. Crear datos de ejemplo
datos1 <- iris[1:50, 1:3] # Primer grupo
datos2 <- iris[51:100, 1:3] # Segundo grupo

# 3. Crear el gráfico base y guardarlo en una variable
s3d <- scatterplot3d(datos1, 
                     pch = 16, 
                     color = "blue", 
                     main = "3D Scatterplot con puntos añadidos")

# 4. Añadir puntos nuevos con s3d$points3d
s3d$points3d(datos2, 
             col = "red", 
             pch = 17) # Diferente color y forma (triángulo)

# 5. (Opcional) Añadir leyenda
legend("topright", legend = c("Grupo 1", "Grupo 2"),
       col = c("blue", "red"), pch = c(16, 17))


