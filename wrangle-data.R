library(tidyverse)
#check names eliminates an "X" that appears no the column names
raw_dat <- read.csv("data/life-expectancy-and-fertility-two-countries-example.csv", check.names=FALSE)
dat <- raw_dat %>% gather(key, value, -country) %>% 
  separate(key, c("year", "variable_name"), sep = "_", extra = "merge")
fertility <- dat %>% filter(variable_name == "fertility")
life_expectancy <- dat %>% filter(variable_name == "life_expectancy")
save(fertility, file = "rda/fertility.rda")
save(life_expectancy, file = "rda/life-expectancy.rda")