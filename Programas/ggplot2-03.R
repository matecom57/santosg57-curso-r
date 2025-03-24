library(ggplot2)

str(mpg)

ggplot(mpg, aes(displ, hwy, colour = class)) + 
  geom_point()


