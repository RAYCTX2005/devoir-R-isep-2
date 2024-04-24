install.packages("palmerpenguins")
 install.packages("car")
install.packages("tidyverse")
library(tidyverse)

dat <- penguins %>%
  select(species, flipper_length_mm
