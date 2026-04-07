x <- 1:12
dim(x) <- c(4,3)

print(x)

mediana <- apply(x, 2, median)
media <- apply(x, 2, mean)
des_st <- apply(x, 2, sd)

x <- rbind(x, mediana, media, des_st)

print(x)

save(x, file = "x.RData")

 
