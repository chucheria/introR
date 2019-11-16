# Read rectangular data with readr
library(readr)
read_csv(readr_example("mtcars.csv"))
vignette("readr")

## Overwrite default config
temp <- read_csv(readr_example("mtcars.csv"), 
         col_types = c(cyl = col_skip(), disp = col_integer()),
         trim_ws = TRUE,
         n_max = 5, 
         na = c("", NA, NULL, 0))
write_csv(temp, "temp.csv")


# Read excel data
library(readxl)
file <- readxl_example("datasets.xlsx")
read_excel(file)

## Overwrite default config
excel_sheets(file)
temp <- read_excel(file, sheet = "quakes", 
           range = "B1:D10", 
           na = "4")


# Read SPSS, Stata, SAS
library(haven)
file <- system.file("examples", "iris.dta", package = "haven")
read_dta(file)

