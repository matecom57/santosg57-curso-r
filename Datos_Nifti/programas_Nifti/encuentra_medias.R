#install.packages("RNifti")

library(scatterplot3d)
library(RNifti)

#file = 'sub-01_task-restaurative_bold.nii.gz'
file = '/Users/santosg/Desktop/Datos_Nifti/sub-01_task-restaurative_bold.nii.gz'
img <- readNifti(file)

ma = max(img)
img = img/ma
print(ma)

ss <- dim(img)


x = c()
y = c()
z = c()

del = .001
mm = .25

for (i in 1:ss[1]){
  for (j in 1:ss[2]){
    for (k in 1:ss[3]){
      r = img[i,j,k,]
       med = mean(r)
       if (mm-del < med & med < mm+del){
         x = c(x,i)
         y = c(y,j)
         z = c(z,k)
       }
    }
  }
}


pp <- scatterplot3d(x, y, z, pch=19)

n = length(x)

r = 3

xn = c()
yn = c()
zn = c()

for (i in 1:n){
  x0 = x[i]
  y0 = y[i]
  z0 = z[i]
  np = 0
  for (j in 1:n){
    x1 = x[j]
    y1 = y[j]
    z1 = z[j]
    if (i != j){
      dd = sqrt((x1-x0)^2 + (y1-y0)^2 + (z1-z0)^2)
      if (dd < r){
        np = np+1
      }
    }
  }
  if (np >= 10){
    print(np)
    print(i)
    print(c(x0, y0, z0))
    xn = c(xn, x0)
    yn = c(yn, y0)
    zn = c(zn, z0)
  }
}  

pp$points3d(xn, yn, zn, pch=16, col='red')
