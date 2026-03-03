library(RNifti)

img <- readNifti("sub-01_task-restaurative_bold.nii.gz")

print(typeof(img))
print(class(img))

dd = dim(img)

print(dd)

vol = img[,,,1]

img =vol[,,15]

ma = max(img)

i0 = 40
j0 = 10
del1 = 1

for (i in (i0-del1):(i0+del1)){
  for (j in (j0-del1):(j0+del1)){
    img[i, j] = ma
  }
}



image(img, col = gray.colors(ma))



