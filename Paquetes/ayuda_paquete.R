args <- commandArgs(trailingOnly = TRUE)

print(args)
var = args[1]
print(var)

help(package = eval(var))

