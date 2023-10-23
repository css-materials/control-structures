# CONTROL STRUCTURES SOLUTIONS

# load the required libraries
library(tidyverse)
library(rcis)



# CONDITIONAL STATEMENTS

# imagine you want to do a recipe with the following ingredients vector
ingredients <- c("eggs", "salt", "olive oil")

# task 1: use a "if-else" statement to check if "eggs" is in ingredients 
# your code should simply print whether eggs is in ingredients or not (hint: use %in%)
if("eggs" %in% ingredients){
  print("eggs is in ingredients")
} else {
  print("you need eggs!")
}

# task 2: do the same using "ifelse"
ifelse("eggs" %in% ingredients, 
       "eggs is in ingredients", 
       "you need eggs!")

# task 3: your ingredients vector should have 4 ingredients, but imagine you are not sure whether that is the case
# use "if, else if, else" to check if you are missing ingredients and how many
# (hint: use length to check the length of the ingredient vector, and print statements)
if (length(ingredients) == 4) {
  print("all ingredients found")
} else if (length(ingredients) == 3) {
  print("one ingredient is missing")
} else if (length(ingredients) == 2) {
  print("two ingredients are missing")
} else if (length(ingredients) == 1) {
  print("three or more ingredients are missing")
} else {
  print("your ingredients vector is empty!")
}



# FOR LOOPS

# write a for loop that iterates over the numbers 1 to 5 and prints the cube of each number
for (i in 1:5) {
  print(i^3)
}

for (i in c(1,2,3,4,5)) {
  print(i^3)
}  

# write a for loop that calculates the MAXIMUM value in each column of diamonds
# hint: use max()
data(diamonds)
diamonds

output <- vector(mode = "double", length = length(diamonds))
for(i in seq_along(diamonds)){
  output[i] <- max(diamonds[[i]])
}
output



# MAP()

# write a map() function to calculate the MAXIMUM value for every column of diamonds
map_dbl(diamonds, max)

# write a map() function to calculate the MEAN for every column in diamonds (set na.rm = TRUE)
map_dbl(diamonds, mean, na.rm = TRUE)



# ACROSS()

# use across() with summarize() to calculate the MAXIMUM value for every column of diamonds
diamonds %>%
  summarize(across(.cols = everything(), .fns = max))

# use across() with summarize() and group_by() to calculate the MEAN for every NUMERIC column in diamonds for each "cut"
diamonds %>%
  group_by(cut) %>%
  summarize(across(.cols = where(is.numeric), .fns = mean, na.rm = TRUE))

# bonus: how would you calculate the COUNT for every combination of FACTOR columns in diamonds?
# https://dplyr.tidyverse.org/dev/articles/colwise.html#multiple-functions
diamonds %>%
  count(across(.cols = where(is.factor)))

