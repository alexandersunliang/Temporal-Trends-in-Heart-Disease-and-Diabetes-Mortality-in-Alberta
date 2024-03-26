#### Preamble ####
# Purpose: Downloads and saves the data from the Alberta Government
# Author: Alexander Sun
# Date: March 15th 2024
# Contact: alexander.sun@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Download data ####
raw_data <- read_csv("https://open.alberta.ca/dataset/03339dc5-fb51-4552-97c7-853688fc428d/resource/3e241965-fee3-400e-9652-07cfbf0c0bda/download/deaths-leading-causes.csv")



#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(raw_data, "data/raw_data/raw-data-leading-causes-of-death.csv") 

         
