Simulaci´n de una distribución normal a partir de una distribuciín uniforme
============================================================================

.. code:: R

   pob <- round(runif(100, min=20, max=80))

   par(mfrow=c(2,2))
   bb = min(pob):(max(pob)+1)
   hist(pob, breaks=bb)

   mp = mean(pob, breaks=bb)

   points(c(mp,mp), c(0, 20), lwd=3, col='red', type='l')

   print(shapiro.test(pob))

   res = c()

   for (i in 1:100){
     ss <- sample(pob, 10, replace=T)
   #  print(ss)
     res <- c(res, round(mean(ss)))
   }

   i1 = min(res)
   i2 = max(res)
   print(c(i1, i2))

   bb = min(res):(max(res)+1)
   h = hist(res, breaks=bb, xlim=c(min(res), max(res)+1))
   mr = mean(res)
   points(c(mr,mr), c(0, 20), lwd=3, col='red', type='l')

   print(shapiro.test(res))

   hc <- h$counts/sum(h$counts)

   barplot(hc, names.arg=i1:i2)

   hcum = cumsum(hc)

   barplot(hcum, names.arg=i1:i2)

   i = i1+1

  ip = i - i1

  probI = hc[ip]

  print(probI)

  probA = hcum[ip]

  print(probA)
