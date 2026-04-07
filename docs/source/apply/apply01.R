x <- 1:12
dim(x) <- c(4,3)

print(x)

mediana <- apply(x, 1, median)
media <- apply(x, 1, mean)
des_st <- apply(x, 1, sd)

cat('\n \n \n', 'En filas: mediana= ', mediana, ' media= ', media, 'des_st= ', des_st, '\n')


cx <- cbind(x, mediana, media, des_st)

print(cx)

mediana <- apply(x, 2, median)
media <- apply(x, 2, mean)
des_st <- apply(x, 2, sd)

cat('\n\n\n En columnas: mediana= ', mediana, ' media= ', media, 'des_st= ', des_st, '\n')


rx <- rbind(x, mediana, media, des_st)

print(rx)

