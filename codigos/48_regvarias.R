##
### Regressão linear simples
##

# Dados
PErisk <- read.csv2('https://raw.githubusercontent.com/umbertomig/rFGVmaterials/master/arquivos/PErisk.csv')
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
turnout <- read.table('https://raw.githubusercontent.com/umbertomig/rFGVmaterials/master/arquivos/turnout.tab')
head(turnout)
summary(turnout)

# Sem cor da pele
mod <- lm(vote~income+educate+age, data=turnout)
summary(mod)

# Com cor da pele
mod <- lm(vote~income+educate+age+race, data=turnout)
summary(mod)

## End of script
