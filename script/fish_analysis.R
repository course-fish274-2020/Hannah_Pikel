
#Exercise 2 - First Solo Commit

#reading in the data

fish_data <- read.csv("data/Gaeta_etal_CLC_data_1.csv")


#creating an additional column that classifies fish bigger than 300mm as big

library(dplyr)
library(ggplot2)
fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small")) 




#Exercise 3 - Second Solo Commit

#creating a new data set that is filtered to exclude any fish with scale length
#less than 1mm

fish_data_cat_clean <- filter(fish_data_cat, scalelength > 1)




#Exercise 5 - Pushing Changes

#Creating a scatter plot of fish length vs scalelength colored by lake ID
ggplot(fish_data_cat_clean, aes(x=length, y=scalelength), color=lakeid) + geom_point()




#Exercise 6

#Code received by pulling from github
ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat)) +
  geom_histogram()

#Saving plot 
ggsave("plots/scale_hist_by_length.jpg")

