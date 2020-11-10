#reading in the data

fish_data <- read.csv("data/Gaeta_etal_CLC_data (1).csv")

#creating an additional column that classifies fish bigger than 300mm as big
library(dplyr)
fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))
