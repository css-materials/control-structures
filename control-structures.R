# practice control structures

# load the required libraries
library(tidyverse)
library(rcis)


# IF-ELSE STATEMENTS

## imagine you want to do an egg recipe and you create and ingredients vectors, as follows
ingredients <- c("eggs", "salt", "olive oil")

## Use a if-else statement to check if "eggs" is in ingredients (hint: use %in%)


## your ingredients vector should have 4 ingredients to make sure you have everything you need
## however, let's imagine you are not sure if your vector has 4 ingredients
## use if, else if, else statements to check if you are missing ingredients and how many
## hint: use length to check the length of the ingredient vector



# FOR LOOPS

## Write a for loop that iterates over the numbers 1 to 5 and prints the cube of each number
data(diamonds)
diamonds

## Write a for loop that calculates the MAXIMUM value in each column of diamonds
## first preallocate space for the output, then run the loop along all the columns of diamonds



# MAP()

## Write a map() function to calculate the MAXIMUM value in each column of diamonds


## Write a map() function to calculate the MEAN for every column in diamonds (set na.rm = TRUE)



# ACROSS()

## Use across() with summarize() to calculate the MAXIMUM value for every column of diamonds


## Use across() with summarize() and group_by() to calculate the MEAN for every NUMERIC column in diamonds for each group of "cut"


## Bonus: how would you calculate the COUNT for every combination of FACTOR columns in diamonds?
# see https://dplyr.tidyverse.org/dev/articles/colwise.html#multiple-functions

