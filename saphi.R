x = round(runif(100, min=40, max = 70))
hist(x)

print(shapiro.test(x))