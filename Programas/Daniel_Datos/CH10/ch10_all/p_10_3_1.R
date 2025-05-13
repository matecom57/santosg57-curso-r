library(psych)


tabla <- read.csv('EXA_C10_S03_01.csv', header=T)

print(names(tabla))

attach(tabla)

pairs(tabla)

l1 = lm(CDA ~ AGE + EDLEVEL)

print(summary(l1))

corPlot(tabla,
        gr = colorRampPalette(heat.colors(40)), scale = FALSE, cex=1.2, upper=F)





