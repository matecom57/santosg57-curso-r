P = c(6,8,10,12,14)

print(mean(P))
print(var(P))

n = 50
vec = c()

for (i in 1:n){
  s = sample(P, 2, replace=T)
  vec = c(vec, mean(s))
}

print(mean(vec))
print(var(vec))

hist(vec)


