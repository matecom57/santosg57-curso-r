muestra <- round(rnorm(12, mean=55, sd=7))

mu1 = 58

res <- t.test(muestra, mu = mu1)

print(res)

err =sqrt(var(muestra)/12)

t = abs(mean(muestra)-mu1) / err

print(t)

print(pnorm(-t)*2)
