# Operators
110 + 2 / 2 
(110 + 2) / 2
2 ^ 2
5 %% 2
5 %/% 2

# Functions
log(1)

# Compare
1 == 1
'a' < 'b'
## Floating point
sqrt(2) ^ 2 == 2
1 / 49 * 49 == 1
dplyr::near(sqrt(2) ^ 2 == 2)

# Variables
x <- 3
x

y = 2
y

# Data structures

## Simple
class(2)
class(2L)
class('a')
class(TRUE)
class(1+3i)

## Vectors
x <- numeric(5)
y <- c(0,0,0,0,0)
x == y
x

## Lists
c("hola", 2)
list("hola", 2)

## Matrix
matrix(c(1, 2, 3, 11, 12, 13),
       nrow = 2,
       ncol = 3,
       byrow = TRUE)

## Dataframe
mtcars

## Factors
x <- factor(c("bueno", "regular", "malo", "bueno", "regular"))
levels(x)
ordered(x, levels = c("malo", "regular", "bueno"))

# Ifelse
x <- sample(c(TRUE, FALSE), 1)
print(x)
if (x == TRUE) {
  cat('Esto es verdadero')
} else {
  cat('Esto es falso')
}

# Loops
for (i in seq(1,5)) {
  cat(paste0('Yo soy el número ', i, '\n'))
}


# Packages
install.packages("tidyverse")
library("tidyverse")
