install.packages("ggplot2")
library("ggplot2")


ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y=hwy))
# (data=mpg) data to plot
# + : add geometry
# geom_point(mapping = () ) gemotric points    maps along a certain mapping.
# aes = aesthetic mappings(x = data1, y = data2) maps points using specified data for x,y.

# aes() specifies aesthetic mappings from data values to visual channels.
# color = column data.
ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class))

# color & size can also be set in geom_point
# column = color
ggplot(data=mpg) + geom_point(mapping = aes(x=displ,y=hwy), color="blue", size=1)


# Can set multiple geoms

ggplot(data=mpg) + geom_point(mapping = aes(x=displ,y=hwy)) + 
  geom_line(mapping = aes(x = displ, y = hwy))


# Can set data for multiple geoms
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom_point() + geom_line()

ggplot(data = mpg) +
  geom_bar(mapping = aes(x = class), stat="count")
# each geom is associated with a stat function. 
# the default statistical transofrmation is used to calculate new data to plot (ex. bar = count)

ggplot(data = mpg) + 
  geom_bar(mapping = aes(x = class), stat="count")

ggplot(data = mpg) + 
  stat_count(mapping = aes(x = hwy, fill=class))
# stacked bar charts = stat_count
# color colors outline of bars, fill = inside of bars.


# Scales are used to determine the range of (aesthetic) values data should map to. (replacing default)
#1,2,3 = red,yellow,blue & 1,2,3 = green,orange,brown

ggplot(data = mpg) +
  geom_point(mapping = aes(x = cty, y = hwy, color=class)) + 
  scale_x_reverse() + # reverse x axis
  scale_color_hue(l = 70, c = 30) # custom color scale

# Color brewer is used to brew color schemes

ggplot(data = mpg) + 
  geom_point(aes(x = displ,y = hwy, color=class), size=4) + 
  scale_color_brewer((palette = "Set3"))

# coord_flip = flips axis of chart.

ggplot(data = mpg) + 
  geom_bar(mapping = aes(x = hwy, fill=class)) + 
  coord_flip()

# Circular plots

ggplot(mpg, aes(x = factor(1), fill=factor(cyl))) + 
  geom_bar(width = 1) + 
  coord_polar(theta="y")

# breaking plots into parts using facets.
# each facet acts like a level in a factor, with a plot for each level.
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~class + cyl)

