n = 19
mx = 250.8
sd = 130.9

alfa = .05
q1 = qt(1-alfa/2, n-1)
print(q1)

er = sd/sqrt(n)

cat('Intervalo = (', round(mx-q1*er,1), ' , ', round(mx+q1*er,1), ')\n')


