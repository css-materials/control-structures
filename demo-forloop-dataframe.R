## EXAMPLE OF USING A FOR LOOP WITH A TIBBLE OR DATA FRAME
## OUR GOAL: CALCULATE THE MEAN VALUE FOR EACH COLUMN WITH A FOR LOOP 

# get data
library(tidyverse)
library(palmerpenguins)
data(penguins)

# data cleaning: select only variables of interest and remove na
head(penguins)
penguins_clean <- select(penguins, 3:6) %>% drop_na()
head(penguins_clean)

# first, we want to calculate the mean

# this seems to work, but...
for (i in penguins_clean) {
  print(mean(i))
}

# ...it is actually incorrect: we would expect that i is 1:4 but it is not
for (i in penguins_clean) {
  print(i)
  print(mean(i))
}

# instead, we should do the following
# at every iteration of the loop i varies and it is a different column
for (i in 1:length(penguins_clean)) {  # same as 1:4
  print(i)
  print(mean(penguins_clean[[i]]))
}
# notice we use the [[]] because columns are lists: we need to access their elements
is.list(penguins_clean)


# second, we want to save these means

# to begin with, we want to use the <- operator to assign the results of the mean operations to an object
# but this won't work... only the last result is saved
for (i in 1:length(penguins_clean)) {  
  output <- (mean(penguins_clean[[i]]))
}
output

# instead...
# we initialize an output vector outside the loop, and we then fill it with the results
# notice mode = "double"; to initialize other types replace with "logical", "character" etc.
output <- vector(mode = "double" , length = length(penguins_clean)) 
output

# loop through each column of the data frame and each time save the result in the output vector
# notice here you do not need the [[]] for output, [] is enough, but they are often added for syntax consistency
for (i in 1:length(penguins_clean)) {
  output[[i]] <- mean(penguins_clean[[i]])
  print(output[[i]])
}
output

# same operation using seq_along() which is a better option than 1:length(object)
# seq_along() creates a vector that contains a sequence of numbers from 1 to the length of the object 
for (i in seq_along(penguins_clean)) {
  output[[i]] <- mean(penguins_clean[[i]])
}
output
