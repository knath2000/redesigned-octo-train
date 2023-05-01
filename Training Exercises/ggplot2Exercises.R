library(ggplot2)
library(ggthemes)

#Ex 1. Create a histogram of hwy mpg values
pl <- ggplot(mpg, aes(x = hwy)) + geom_histogram(fill = 'red', alpha = 0.5, bins = 15)
print(pl)

#Ex 2. Create a barplot of car counts per manufacturer with color fill defined by cyl count
pl2 <- ggplot(mpg, aes(x = manufacturer, fill = factor(cyl))) + geom_bar()
print(pl2)

#Ex 3. Create a scatterplot of volumne versus sales.
pl3 <- ggplot(txhousing, aes(x = sales, y = volume)) + geom_point(color = 'blue', alpha = 0.5)
print(pl3)

#Ex 4. Add a smooth fit line to the scatterplot from above
pl4 <- ggplot(txhousing, aes(x = sales, y = volume)) + geom_point(color = 'blue', alpha = 0.5) + geom_smooth(color = 'red')
print(pl4)