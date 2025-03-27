# library
library(ggplot2)
 
# The iris dataset is provided natively by R
#head(iris)
 
# basic scatterplot
p = ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) + 
    geom_point()

print(p)


