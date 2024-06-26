# WARM UP CONDITIONAL STATEMENTS


# if-else
age <- 14
if (age > 16) {
  print("You can get a driving license")
} else {
  print("You cannot drive")
}


# if-else
my_numbers <- c(3,4,5,"6",7)
if (!is.numeric(my_numbers)) {
  print("At least one element is not numeric. Only provide numbers.")
} else {
  print("All numeric elements")
}


# if, else if, else
x <- 0
if (x > 0) {
  print("x is a positive number")
} else if (x < 0) {
  print("x is a negative number")
} else {
  print("x is zero")
}


# nested if-else
x <- 15
if (x > 0) {
  if (x %% 2 == 0) {
    print("x is a positive even number")
  } else {
    print("x is a positive odd number")
  }
} else {
  if (x %% 2 == 0) {
    print("x is a negative even number")
  } else {
    print("x is a negative odd number")
  }
}


# improved nested if-else
x <- 0
if (x > 0) {
  if (x %% 2 == 0) {
    print("x is a positive even number")
  } else {
    print("x is a positive odd number")
  }
} else if (x < 0) {
  if (x %% 2 == 0) {
    print("x is a negative even number")
  } else {
    print("x is a negative odd number")
  }
} else {
  print("x is zero")
}


# ifelse()
y <- 3
ifelse(sqrt(16) > y, 
       sqrt(16),
       0)


# ifelse()
numbers <- c(10, 6, 7)
ifelse(numbers %% 2 == 1, 
       "odd",
       "even")


#ifelse()
library(tidyverse)
qualify <- tibble("Athlet" = c("Noah", "Julio", "Nick", "Maria"), 
                  "Scores" = c(32, 37, 28, 30))
ifelse(qualify$"Scores" > 30, "Admitted", "Rejected")
