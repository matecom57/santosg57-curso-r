muestra <- round(rnorm(12, mean=55, sd=7))

print(muestra)

mu1 = 58

print(mu1)

res <- t.test(muestra, mu = mu1)

print(res)

err =sqrt(var(muestra)/12)

t = -1*abs(mean(muestra)-mu1) / err

cat('t= ', t, '\n')

cat('pvalue= ', 2*pt(t,11), '\n')

alfa = 0.05

q = qt(1-alfa/2, 11)

li = mean(muestra) - q*err
ls = mean(muestra) + q*err

cat('Intervalo de confianza: [', li, ' , ', ls ,']\n')


