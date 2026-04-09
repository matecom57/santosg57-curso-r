#install.packages("RNifti")

library(RNifti)

file = 'sub-01_task-restaurative_bold.nii.gz'

img <- readNifti(file)

ma = max(img)
img = img/ma
print(ma)

ss <- dim(img)

print(ss)

r = img[1,1,1,]

#plot(r,type = 'l', xlim=c(0,150), ylim=c(0,1.2))

x = c()

for (i in 1:ss[1]){
  for (j in 1:ss[2]){
    for (k in 1:ss[3]){
      r = img[i,j,k,]
#      print(r)
#      points(r, type='l')
       x = c(x, mean(r))
    }
  }
}

print(c(min(x), max(x), length(x)))

t = seq(0, 1, .02)
h <- hist(x, breaks=t)

x0 = .25

points(c(x0,x0), c(0, 60000), type='l', col='red', lwd = 3)

y = h$counts
n = length(y)
y <- y[2:n]
print(y)
barplot(y)
