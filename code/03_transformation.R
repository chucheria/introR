library(nycflights13)
library(dplyr)

head(flights)
str(flights)

########### Filter
filter(flights, month == 1, day == 1)
jan1 <- flights %>% 
  filter(month == 1, day == 1)

# Logical operators
# filter(flights, month == 11 | month == 12)
nov_dec <- filter(flights, month %in% c(11, 12))

# filter(flights, arr_delay <= 120, dep_delay <= 120)
filter(flights, !(arr_delay > 120 | dep_delay > 120))

########### Missing values
filter(
  tibble(x = c(1, NA)), 
  is.na(x)
)

########## Arrange
arrange(flights, year, month, day)
