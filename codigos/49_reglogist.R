##
### Regressão Logística
##

# Dados
turnout <- read.table('https://raw.githubusercontent.com/umbertomig/rFGVmaterials/master/arquivos/turnout.tab')
head(turnout)
summary(turnout)

# Regressão logística

# Exemplo: decisão de ir ou não votar
mod <- glm(vote~income+educate+age+race, data=turnout, family = binomial(link = "logit"))
summary(mod)

# Razão de chance
exp(mod$coefficients)

## End of script
