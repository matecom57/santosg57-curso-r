pob = 1:6

res = c()
start.time <- Sys.time()
for (i in 1:100){
  i = sample(pob,1)
  res <- c(res, i)
  plot(0,0,xlim=c(-50,50), ylim=c(-50,50), axes = FALSE, type='n', xlab = "", ylab = "")
  text(0,0,i, cex=10)
  Sys.sleep(1)
}
end.time <- Sys.time()
time.taken <- end.time - start.time
print(time.taken)

hist(res, breaks=1:6)


