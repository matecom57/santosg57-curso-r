n = 15
mx = 84.3
var = 144

alfa = .01
q1 = qnorm(1-alfa/2)
print(q1)

er = sqrt(var/n)

cat('Intervalo = (', round(mx-q1*er,1), ' , ', round(mx+q1*er,1), ')\n')


