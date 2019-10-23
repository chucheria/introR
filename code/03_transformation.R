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
arrange(flights, desc(dep_delay))

########## Select
select(flights, year:day)
select(flights, -(year:day))

########## Select
select(flights, contains("TIME"))
#start_with
#ends_with
#matches
#num_range
#one_of

######### Rename
rename(flights, tail_num = tailnum)


######### Mutate
select(flights, 
       year:day, 
       ends_with("delay"), 
       distance, 
       air_time
) %>% 
mutate(gain = dep_delay - arr_delay,
       speed = distance / air_time * 60,
       hours = air_time / 60,
       gain_per_hour = gain / hours
)

######### Grouped summaries
summarise(flights, delay = mean(dep_delay, na.rm = TRUE))

######## Pipping
# x %>% f(y) turns into f(x, y), and x %>% f(y) %>% g(z) turns into g(f(x, y), z)
flights %>% 
  group_by(dest) %>% 
  summarise(count = n(),
            dist = mean(distance, na.rm = TRUE),
            delay = mean(arr_delay, na.rm = TRUE)
) %>% 
  filter(delay, count > 20, dest != "HNL")
