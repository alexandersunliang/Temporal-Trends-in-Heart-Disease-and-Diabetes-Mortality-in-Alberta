#### Preamble ####
# Purpose: Models... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
filtered_data <- read.csv(here("data/analysis_data/analysis_data.csv"))

### Model data ####
cause_of_death_poisson <- stan_glm(
  total_deaths ~ cause,
  data = filtered_data,
  family = poisson(link = "log"),
  seed = 853,
  refresh = 0
)

#Comparing the graphs
cause_of_death_neg_binomial <- stan_glm(
  total_deaths ~ cause,
  data = filtered_data,
  family = neg_binomial_2(link = "log"),
  seed = 853,
  refresh = 0
)

## I generated the models inside the actual graphs so i have no idea if the code below works since I never ran it
#### Save model ####
saveRDS(
  first_model,
  file = "models/first_model.rds"
)


