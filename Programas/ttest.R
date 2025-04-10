x <- round(runif(12,min=48, max=62))

y <- round(rnorm(12, mean=58, sd=7))

boxplot(x,y, ylim=c(0,100))

xy <- data.frame(x,y)

print(xy)

write.csv(xy, 'xy.csv')

res <- t.test(x,y)

print(res)
