l1 <- list(1:5, seq(0,1,.1), -5:5)

print(l1)

mediana = as.numeric(lapply(l1, median))
media = as.numeric(lapply(l1, mean))
sd1   = as.numeric(lapply(l1, sd))

cat('mediana: ' , mediana, 'media: ', media, 'sd: ', sd1, '\n')


