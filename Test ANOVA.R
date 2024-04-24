install.packages("palmerpenguins")
 install.packages("car")
install.packages("tidyverse")
library(palmerpenguins)
library(tidyverse)
#preparation et etude de la base
dat <- penguins %>%
  select(species, flipper_length_mm
library(ggplot2)

ggplot(dat) +
  aes(x = species, y = flipper_length_mm, color = species) +
  geom_jitter() +
  theme(legend.position = "none")
#normalite 
  res_aov <- aov(flipper_length_mm ~ species,
  data = dat
)
par(mfrow = c(1, 2)) # combine plots

# histogram
hist(res_aov$residuals)

# QQ-plot
library(car)
qqPlot(res_aov$residuals,
  id = FALSE # id = FALSE to remove point identification
)
 shapiro.test(res_aov$residuals)        
