library(tidyverse)
load("rda/fertility.rda")
load("rda/life-expectancy.rda")

fertility %>% 
  ggplot(aes(year, value, color = country)) +
  geom_point() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

ggsave("figs/fertility.png")

life_expectancy %>% 
  ggplot(aes(year, value, color = country)) +
  geom_point() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

ggsave("figs/life_expectancy.png")