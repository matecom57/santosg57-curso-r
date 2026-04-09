#install.packages("RNifti")

library(RNifti)

file = 'sub-01_task-restaurative_bold.nii.gz'

img <- readNifti(file)

print(dim(img))

#64  64  38 102

vol = img[,,,1]

i0 = 28
j0 = 21
k0 = 31

imgS = vol[i0,,]
#image(imgS, col = gray.colors(255))

imgS[j0,] = 0
imgS[,k0] = 0

j0 = 21
imgC = vol[,j0,]
imgC[i0,] = 0
imgC[, k0] = 0

#image(imgC, col = gray.colors(255))

k0 = 31
imgA = vol[,,k0]
imgA[i0:i0,] = 0
imgA[,j0:j0] = 0
#image(imgA, col = gray.colors(255))

imgN = rep(0, 102*102)
dim(imgN) = c(102,102)

print(dim(imgA))
print(dim(imgS))

cc = dim(imgC)
imgCC = c()
imgCC = rbind(imgCC, imgC[,1])
for (i in 2:cc[2]){
  imgCC = rbind(imgCC, imgC[,i])
}

print(dim(imgCC))

imgN[1:64,1:64] = imgA
imgN[1:64,65:102] = imgS
imgN[65:102,1:64] = imgCC
image(imgN, col = gray.colors(255))
