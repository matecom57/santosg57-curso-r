# library
library(ggplot2)
 
# Keep 30 first rows in the mtcars natively available dataset
data=head(mtcars, 30)
 
# 1/ add text with geom_text, use nudge to nudge the text
p = ggplot(data, aes(x=wt, y=mpg)) +
  geom_point() + # Show dots
  geom_text(
    label=rownames(data), 
    nudge_x = 0.25, nudge_y = 0.25, 
    check_overlap = T
  )

print(p)


