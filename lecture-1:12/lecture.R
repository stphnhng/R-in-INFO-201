install.packages("stringr")
library("stringr")

1:100 # prints 1- 100

name.vector <- c("john","smith")
# creates a vector with john & smith.

v1 <- c(3,1,4,1,5)
v2 <- c(1,6,1,8,0)

v3 <- v1 + v2
v4 <- v1 > v2

v1 <- c(3,1,4,1,5)
v2 <- c(10,100)

# 3 + 10, 1 + 100, 4 + 10, 1 + 100, 5 + 10
# recycles 10, 100 and uses it until the longer one is all added up.

v3 <- v1 + v2