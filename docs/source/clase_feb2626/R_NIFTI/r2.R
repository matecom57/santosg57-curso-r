library(RNifti)

img <- readNifti("sub-01_task-restaurative_bold.nii.gz")

print(typeof(img))
print(class(img))

dd = dim(img)

i0 = 40
j0 = 10 
k0 = 15
del1 = 5

x0 = img[i0, j0, k0,]
cc = list()
m = 1

for (i in (i0-del1):(i0+del1)){
  for (j in (j0-del1):(j0+del1)){
    for (k in (k0-del1):(k0+del1)){
      if (!(i == i0 & j == j0 & k == k0)){
        y = img[i, j, k,]
        r = cor(x0, y)
        cat(m, ' = ', r, '\n')
        print(c(i,j,k))
        if (abs(r) < .1){
          cc[[m]] = c(i,j,k)
          m = m+1
        }
      }
    }
  }
}

nc = length(cc)

img = matrix(rep(0, dd[1]*dd[2]), ncol=dd[2])

for (k in 1:nc){
  ii = cc[[k]]
  print(ii)
  i = ii[1]
  j = ii[2]
  k = ii[3]
  if (k == 15){
    img[i, j] = 255
  }
}

image(img, col=gray.colors(255))








