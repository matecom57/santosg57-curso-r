x = round(rnorm(12, mean=55, sd=7))

print(shapiro.test(x))