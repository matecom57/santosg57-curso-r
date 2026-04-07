rm(list=ls())

fun1 <- function(pob=0, del1=0, h1=0, h2=0, titulo='', sujetos='', fre=TRUE){
   
   cat('\n\n\n Descripción de ', sujetos,' de ', titulo, '\n')

   print(shapiro.test(pob))
   
   mp = mean(pob)
   sd1 = sd(pob)
   nl = length(pob)
   
   cat('media= ', mp, ' desviacion estandar =', sd1, ' longitud = ', nl, '\n\n\n')

   x1 = min(pob) - 4
   x2 = max(pob) + 4
  
   xx = seq(x1, x2, del1)   
   h <- hist(pob, breaks=xx, main =titulo, xlim=c(x1, x2), freq = fre)
   print(sum(h$counts))
   if (fre == FALSE){
     z = dnorm(xx)
     points(xx, z, type='l', lwd=3, col='red')
   }

   points(c(mp, mp), c(0,h1), type ='l', lwd=3, col='blue')

   ss1 = sum(mp - sd1 < pob & pob < mp + sd1)
   por = ss1*100/nl
   cat('porcentaje de ', sujetos, ' de la población de la media a una desviación estándar= ', 
por, '\n\n\n')

   points(c(mp-sd1, mp-sd1), c(0,h2), type ='l', lwd=3, col='red')

   points(c(mp+sd1, mp+sd1), c(0,h2), type ='l', lwd=3, col='red')
}

TomaMuestras <- function(pob=0){
	n_muestras=20
	muestras = c()
	for (i in 1: n_muestras){
		ss <- sample(pob, 12)
		muestras <- c(muestras, round(mean(ss)))
	}
	ret <- muestras
}

Convierte_med0sd1 <- function(pob=0){
  mp = mean(pob)	
  sd1 = sd(pob)
  res = (pob-mp)/sd1
}
#-------------------------------------------------------------------
#
# EXPERIMENTO 1. distribucion uniforme

cat('\n 1. Población Uniforme \n
2. Medias muestrales \n
3. Medias muestrales Estandarizadas \n\n
Introduce opción: ')

opt <- readLines("stdin", n=1)

pob <- round(runif(100, min=30, max=70))

tit <- "Distribución de la Población Uniforme"

if (opt == "1"){
   h1 = 5
   h2 = 2
   del1 = 1
   sujetos = ' sujetos '
   cat(sujetos,'\n')
   fre = TRUE
} else if (opt == "2"){
   pob <- TomaMuestras(pob)
   h1 = 3
   h2 = 1
   del1 = .1
   sujetos = ' medias muestras de sujetos '
   cat(sujetos, '\n')
   fre = TRUE
} else if (opt == "3"){
   pob <- TomaMuestras(pob)
   pob <- Convierte_med0sd1(pob)
   h1 = 1
   h2 = .5
   del1 = .1
   sujetos = ' medias muestras de sujetos estandarizados '
   cat(sujetos, '\n')
   fre = FALSE
}

fun1(pob, del1, h1, h2, paste(sujetos, tit), sujetos, fre)



