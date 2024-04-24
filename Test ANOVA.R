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
# égalité des variance
        # Boxplot
boxplot(flipper_length_mm ~ species,
  data = dat
)
         # test de levene
library(car)

leveneTest(flipper_length_mm ~ species,
  data = dat
)

## Levene's Test for Homogeneity of Variance (center = median)
##        Df F value Pr(>F)
## group   2  0.3306 0.7188
##       339

    #valeur abérante
  boxplot(flipper_length_mm ~ species,
  data = dat
)
  #anova
         # 1st method:
oneway.test(flipper_length_mm ~ species,
  data = dat,
  var.equal = TRUE # assuming equal variances
)

## 
## 	One-way analysis of means
## 
## data:  flipper_length_mm and species
## F = 594.8, num df = 2, denom df = 339, p-value < 2.2e-16
         
        


         
