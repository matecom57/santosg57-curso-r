# =========================
# CARGAR LIBRERÍA
# =========================
library(RNifti)

# =========================
# LEER IMAGEN
# =========================
file = '/Users/santosg/Desktop/Datos_Nifti/sub-01_T1w.nii.gz'
img3 <- readNifti(file)

# =========================
# SELECCIONAR CORTE (ajusta si quieres)
# =========================
img = img3[85,,]   # axial
imgt = img

# =========================
# SEED INICIAL (ajústalo manualmente si hace falta)
# =========================
i0 = 120
j0 = 130

# =========================
# MUESTRA INICIAL PARA ESTIMAR INTENSIDAD LCR
# =========================
muestra = c()
del = 3

for (i in (i0-del):(i0+del)){
  for (j in (j0-del):(j0+del)){
    mm = img[i,j]
    muestra = c(muestra, mm)
  }
}

me = mean(muestra)
sd1 = sd(muestra)

# =========================
# FILTRADO: SOLO INTENSIDADES TIPO LCR (oscuras)
# =========================
imgt = img

for (i in 1:dim(img)[1]){
  for (j in 1:dim(img)[2]){
    x = img[i,j]
    
    # condición: cercano al seed Y oscuro
    if (!(abs(x-me) < 2*sd1 & x < me)){
      imgt[i,j] = 1   # fondo
    } else {
      imgt[i,j] = 0   # candidato LCR
    }
  }
}

# =========================
# CRECIMIENTO DE REGIÓN (FLOOD FILL)
# =========================
X = c()
Y = c()
IMGT <- imgt

recursiva <- function(i, j){
  
  # evitar overflow
  if (i < 1 | j < 1 | i > dim(img)[1] | j > dim(img)[2]) return()
  
  if (IMGT[i,j] != 0) return()
  
  X <<- c(X,i)
  Y <<- c(Y,j)
  
  IMGT[i,j] <<- 999
  
  for (ii in (i-1):(i+1)){
    for (jj in (j-1):(j+1)){
      recursiva(ii,jj)
    }
  }
}

# ejecutar desde seed
recursiva(i0, j0)

# =========================
# CREAR IMAGEN FINAL (RGB)
# =========================
ss = dim(img)
imgRGB = rep(0, ss[1]*ss[2]*3)
dim(imgRGB) = c(ss[1], ss[2], 3)

# canal gris base
imgRGB[,,2] = img

# pintar ventrículo en rojo
for (k in 1:length(X)){
  imgRGB[X[k], Y[k],1] = max(img)  # rojo
}

# =========================
# MOSTRAR RESULTADO
# =========================
print(dim(imgRGB))

par(mfrow=c(2,2))
imgRGB1 = imgRGB[,,1]
image(imgRGB1)

imgRGB2 = imgRGB[,,2]       
image(imgRGB2)

imgRGB3 = imgRGB[,,3]
image(imgRGB3)
