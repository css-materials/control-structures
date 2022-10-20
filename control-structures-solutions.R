# practice control structures - solutions 

# load the required libraries
library(tidyverse)
library(modeldata)
library(rcis)



# IF-ELSE STATEMENTS

# imagine you want to do an egg recipe and you create and ingredients vectors, as follows
ingredients <- c("eggs", "salt", "olive oil")

# use a if-else statement to check if "eggs" is in ingredients 
# hint: use %in%
if("eggs" %in% ingredients){
  print("eggs is in ingredients")
} else {
  print("You need eggs!")
}

# your ingredients vector should have 4 ingredients to make sure you have everything you need
# however, let's imagine you are not sure if your vector has 4 ingredients
# use if, else if, else statements to check if you are missing ingredients and how many
# hint: use length to check the length of the ingredient vector
if (length(ingredients) == 4) {
  print("all ingredients found")
} else if (length(ingredients) == 3) {
  print("One ingredient is missing")
} else if (length(ingredients) == 2) {
  print("Two ingredients are missing")
} else if (length(ingredients) == 1) {
  print("Three or more ingredients are missing")
} else {
  print("Your ingredients vector is empty!")
}



# FOR LOOPS

## Write a for loop that iterates over the numbers 1 to 5 and prints the cube of each number
for (i in 1:5) {
  print(i^3)
}


## Write a for loop that calculates the maximum value in each column of car_prices
car_prices

### preallocate space for the output
output <- vector("numeric", ncol(car_prices))

### initialize the loop along all the columns of car_prices
for(i in seq_along(car_prices)){
  # calculate the max value for the i-th column
  output[i] <- max(car_prices[[i]])
}
output



# MAP()

# Write iterative operations using a map() function
## Write a map() function that calculates the arithmetic mean for every column in car_prices
map_dbl(car_prices, mean)

## Write a map() function that calculates the maximum value in each column of car_prices
map_dbl(car_prices, max)



# ACROSS()

# Use across() to rescale all numeric variables in rcis::worldbank to range between 0 and 1.
## rescale() function
rescale01 <- function(x) {
  rng <- range(x, na.rm = TRUE)
  (x - rng[1]) / (rng[2] - rng[1])
}

## apply using mutate() and across()
worldbank %>%
  mutate(across(.cols = where(is.numeric), .fns = rescale01))
