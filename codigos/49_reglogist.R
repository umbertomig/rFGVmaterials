##
### Regressão linear simples
##

# Dados
library(Zelig)
data(turnout)
head(turnout)
summary(turnout)

# Regressão logística

# Exemplo: ir votar
mod <- glm(vote~income+educate+age+race, data=turnout, family = binomial(link = "logit"))
summary(mod)

# Razão de chance
exp(mod$coefficients)

## End of script
