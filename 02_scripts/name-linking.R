

# script to create a file that links names through time
# goal: columns for preferred name and old names (numbered 1 - n)

# libraries
library(tidyverse)
library(readxl)

# load in preferred names from John

names <- read_excel("01_raw-data/Verbatim Stebbins Names.xlsx")

# concatenate columns 1 and 2
names %>%
  mutate(hodges_list = paste(`...1`, `...2`))
