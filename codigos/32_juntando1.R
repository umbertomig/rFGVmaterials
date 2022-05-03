##
### Agregação de bancos de dados
##

# Carregando pacotes e banco de dados
library(Zelig); library(tidyverse)
data(PErisk)
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
#### inner_join
##
dat3_innerjoin <- inner_join(dat1, dat2)
dat3_innerjoin

##
#### left_join
##
dat3_leftjoin <- left_join(dat1, dat2)
dat3_leftjoin

##
#### right_join
##
dat3_rightjoin <- right_join(dat1, dat2)
dat3_rightjoin
