# practice control structures

# load the required libraries
library(tidyverse)
library(modeldata)
library(rcis)



# IF-ELSE STATEMENTS

# imagine you want to do an egg recipe and you create and ingredients vectors, as follows
ingredients <- c("eggs", "salt", "olive oil")

# use a if-else statement to check if "eggs" is in ingredients 
# hint: use %in%


# your ingredients vector should have 4 ingredients to make sure you have everything you need
# however, let's imagine you are not sure if your vector has 4 ingredients
# use if, else if, else statements to check if you are missing ingredients and how many
# hint: use length to check the length of the ingredient vector





# FOR LOOPS

## Write a for loop that iterates over the numbers 1 to 5 and prints the cube of each number



## Write a for loop that calculates the maximum value in each column of car_prices
car_prices




# MAP()

# Write iterative operations using a map() function
## Write a map() function that calculates the arithmetic mean for every column in car_prices
car_prices


## Write a map() function that calculates the maximum value in each column of car_prices
car_prices




# ACROSS()

# Use across() to rescale all numeric variables in rcis::worldbank to range between 0 and 1.
## rescale() function
rescale01 <- function(x) {
  rng <- range(x, na.rm = TRUE)
  (x - rng[1]) / (rng[2] - rng[1])
}