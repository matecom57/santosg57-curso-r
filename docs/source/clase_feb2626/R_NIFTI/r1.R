library(RNifti)

img <- readNifti("sub-01_T1w.nii.gz")

print(typeof(img))
print(class(img))

print(dim(img))

imgA = img[,,100]
print(dim(imgA))
#image(imgA)

imgC = img[,100,]
print(dim(imgC))
#image(imgC) 

imgS = img[100,,]
print(dim(imgS))
#image(imgS)

ss = dim(imgA)

print(ss)
x1 = min(imgA)
x2 = max(imgA)

print(c(x1, x2))

np = ss[1]*ss[2]

dim(imgA) = c(1,np)

hist(imgA)




