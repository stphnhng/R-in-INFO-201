# Difference between a list & vector

# Lecture Answer: list has multiple data types
#                 vectors cannot
#                 lists can tag values.

# The difference is that vector holds only one set of values like a mathematical vector.
# Lists can hold multiple sets of different items including vectors.
# In addition you can set a key / value as in name="Stephen".


# Difference between single-bracket notation & double-bracket.
# Single-bracket is for finding a list.
# double-bracket is used to find a specified item.

# Lecture Answer:

# Single Bracket: gets the same data type back. (Single bracket for data frame gets data frame back)
#                 filters items.
# Double Bracket: Gets it as a vector.

# Gets 35 out of data frame.

data <- data.frame(age = c(35:38), height = c(71,65,60,62) )
data[1,"age"]
data[1,1]
data$age[1]
