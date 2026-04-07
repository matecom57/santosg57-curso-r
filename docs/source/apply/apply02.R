x <- 1:24
dim(x) <- c(3,2, 4)

print(x)

mediana <- apply(x, c(1,2), median)
media <- apply(x, c(1,2), mean)
des_st <- apply(x, c(1,2), sd)

cat('mediana= ', mediana, ' media= ', media, 'des_st= ', des_st, '\n')


#x <- rbind(x, mediana, media, des_st)

#print(x)

#save(x, file = "x.RData")

ss = dim(x)

print(ss)

n1 = ss[1]
n2 = ss[2]
 
for (i in 1:n1){
  for (j in 1:n2){
    z = x[i,j,]
    cat('mediana= ', median(z), 'media= ', mean(z),'sd= ', sd(z), '\n')
  }
}
