##
### Regressão linear simples
##

# Dados
library(Zelig)
data(PErisk)
head(PErisk)

# Sumário
summary(PErisk)

# Regressão linear com várias variáveis

# Exemplo: ganho com crime e cortes
mod <- lm(barb2~courts, data=PErisk)
summary(mod)

# Mas se adicionar outras variáveis...
mod <- lm(barb2~courts+prsexp2+prscorr2, data=PErisk)
summary(mod)

# Decisão de ir ou não votar
data(turnout)
head(turnout)
summary(turnout)

# Sem cor da pele
mod <- lm(vote~income+educate+age, data=turnout)
summary(mod)

# Com cor da pele
mod <- lm(vote~income+educate+age+race, data=turnout)
summary(mod)

## End of script
