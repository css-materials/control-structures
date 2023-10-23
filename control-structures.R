# CONTROL STRUCTURES PRACTICE EXERCISES

# load the required libraries
library(tidyverse)
library(rcis)


# CONDITIONAL STATEMENTS

# imagine you want to do a recipe with the following ingredients vector
ingredients <- c("eggs", "salt", "olive oil")

# task 1: use a "if-else" statement to check if "eggs" is in ingredients (hint: use %in%)
# your code should simply print whether eggs is in ingredients or not (hint: use %in%)


# task 2: do the same using "ifelse"


# task 3: your ingredients vector should have 4 ingredients, but imagine you are not sure whether that is the case
# use "if, else if, else" to check if you are missing ingredients and how many
# (hint: use length to check the length of the ingredient vector, and print state




# FOR LOOPS

# write a for loop that iterates over the numbers 1 to 5 and prints the cube of each number


# write a for loop that calculates the MAXIMUM value in each column of diamonds
# hint: use max()
data(diamonds)
diamonds





# MAP()

# write a map() function to calculate the MAXIMUM value in each column of diamonds


# write a map() function to calculate the MEAN for every column in diamonds (set na.rm = TRUE)





# ACROSS()

# use across() with summarize() to calculate the MAXIMUM value for every column of diamonds


# use across() with summarize() and group_by() to calculate the MEAN for every NUMERIC column in diamonds for each""cut"


# bonus: how would you calculate the COUNT for every combination of FACTOR columns in diamonds?
# https://dplyr.tidyverse.org/dev/articles/colwise.html#multiple-functions

