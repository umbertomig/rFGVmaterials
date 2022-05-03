##
### Agregação de bancos de dados
##

# Carregando pacotes e banco de dados
library(tidyverse)
PErisk <- read.csv2('https://raw.githubusercontent.com/umbertomig/rFGVmaterials/master/arquivos/PErisk.csv')
head(PErisk)
summary(PErisk)

# First dataset
dat1 <- PErisk %>% 
  filter(country %in% PErisk$country[1:5]) %>%
  select(country, courts:prsexp2)
dat1

# Second dataset
dat2 <- PErisk %>% 
  filter(country %in% PErisk$country[2:6]) %>%
  select(country, prscorr2, gdpw2)
dat2

##
#### full_join
##
dat3_fulljoin <- full_join(dat1, dat2)
dat3_fulljoin

##
#### semi_join
##
dat3_semijoin <- semi_join(dat1, dat2)
dat3_semijoin

##
#### anti_join
##
dat3_antijoin <- anti_join(dat1, dat2)
dat3_antijoin