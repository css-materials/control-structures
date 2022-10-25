# practice control structures - solutions 

# load the required libraries
library(tidyverse)
library(rcis)


# IF-ELSE STATEMENTS

## imagine you want to do an egg recipe and you create and ingredients vectors, as follows
ingredients <- c("eggs", "salt", "olive oil")

## Use a if-else statement to check if "eggs" is in ingredients (hint: use %in%)
### using if-else
if("eggs" %in% ingredients){
  print("eggs is in ingredients")
} else {
  print("you need eggs!")
}
### using ifelse()
ifelse("eggs" %in% ingredients, 
       "eggs is in ingredients", 
       "you need eggs!")

## your ingredients vector should have 4 ingredients to make sure you have everything you need
## however, let's imagine you are not sure if your vector has 4 ingredients
## use if, else if, else statements to check if you are missing ingredients and how many
## hint: use length to check the length of the ingredient vector
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

## Write a for loop that iterates over the numbers 1 to 5 and prints the cube of each number
for (i in 1:5) {
  print(i^3)
}

for (i in c(1,2,3,4,5)) {
  print(i^3)
}  

## Write a for loop that calculates the MAXIMUM value in each column of diamonds
data(diamonds)
diamonds

### preallocate space for the output
output <- vector(mode = "double", length = length(diamonds))

### run the loop along all the columns of diamonds
for(i in seq_along(diamonds)){
  # calculate the max value for the i-th column
  output[i] <- max(diamonds[[i]])
}
output



# MAP()

## Write a map() function to calculate the MAXIMUM value for every column of diamonds
map_dbl(diamonds, max)

## Write a map() function to calculate the MEAN for every column in diamonds (set na.rm = TRUE)
map_dbl(diamonds, mean, na.rm = TRUE)




# ACROSS()

## Use across() with summarize() to calculate the MAXIMUM value for every column of diamonds
diamonds %>%
  summarize(across(.cols = everything(), .fns = max))

## Use across() with summarize() and group_by() to calculate the MEAN for every NUMERIC column in diamonds for each group of "cut"
diamonds %>%
  group_by(cut) %>%
  summarize(across(.cols = where(is.numeric), .fns = mean, na.rm = TRUE))

## Bonus: how would you calculate the COUNT for every combination of FACTOR columns in diamonds?
# see https://dplyr.tidyverse.org/dev/articles/colwise.html#multiple-functions
diamonds %>%
  count(across(.cols = where(is.factor)))

