library('tidyr')
library('ggplot2')

# Make a data.frame (example)
students <- data.frame(
  name = c('Mason', 'Tabi', 'Bryce', 'Ada', 'Bob','Filipe'),
  section = c('a','a','a','b','b','b'),
  math_exam1 = c(91, 82, 93, 100, 78, 91),
  math_exam2 = c(88, 79, 77, 99, 88, 93),
  spanish_exam1 = c(79, 88, 92, 83, 87, 77),
  spanish_exam2 = c(99, 92, 92, 82, 85, 95)
)

# Convert from wide to long using gather()
# Key is a new column containing gathered column names.
# Value is a new column containing gathered column values.
students.long <- gather(students, key = exam, value = score, 
                       math_exam1, math_exam2, spanish_exam1, spanish_exam2)

# Convert from long to wide using spread()
# key = where to get new colnames
# value = where to get values.

# Spread by column "exam"
stu.wide <- spread(students.long, key = exam, value = score)

# Spread by column "name"
stu.wide.name <- spread(students.long, key = name, value = score)

# Draws a rectangle
rect <- data.frame(x.coords = c(3,5,5,3),
                   y.coords = c(4,4,2,2))
ggplot(data = rect) + 
  geom_polygon(mapping = aes(x = x.coords, y=y.coords))
# geom_polygon draws a polygon.s

# draws multiple polygons by grouping points.

double.rect <- data.frame(x.coords = c(1,2,2,1, 3,4,4,3),
                          y.coords = c(2,2,1,1, 2,2,1,1),
                          rect.num = c(1,1,1,1, 2,2,2,2))
# first set = 1st rect, 2nd set = 2nd rect.
ggplot(data = double.rect) +
  geom_polygon(aes(x=x.coords, y=y.coords, group = rect.num))

# Data for USA Map

usa.states <- map_data("state")


# Graph USA map using latitude & longitude
ggplot(data = usa.states) +
  geom_polygon(mapping = aes(x = long, y = lat, group = group)) +
  coord_quickmap()

# coord_quickmap = coordinates for map projection.



