x = 1:24
y = c(rep(1,12), rep(2, 8), rep(3,4))

print(length(x))
print(length(y))

res = tapply(x,y, sum)

print(res)


