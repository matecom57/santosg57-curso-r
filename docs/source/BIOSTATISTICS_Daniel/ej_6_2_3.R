n = 35
mx = 17.2
sd = 8

alfa = .1
q1 = qnorm(1-alfa/2)
print(q1)

er = sd/sqrt(n)

cat('Intervalo = (', round(mx-q1*er,1), ' , ', round(mx+q1*er,1), ')\n')


