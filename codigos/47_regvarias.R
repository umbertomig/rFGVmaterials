##
### Regressão linear simples
##

# Dados
PErisk <- read.csv2('https://raw.githubusercontent.com/umbertomig/rFGVmaterials/master/arquivos/PErisk.csv')
head(PErisk)

# Sumário
summary(PErisk)

# Regressão linear com várias variáveis

# Exemplo: explicações para ganho no crime
mod <- lm(barb2~prsexp2+prscorr2, data=PErisk)
summary(mod)

# Outro exemplo
turnout <- read.table('https://raw.githubusercontent.com/umbertomig/rFGVmaterials/master/arquivos/turnout.tab')
head(turnout)
summary(turnout)

mod <- lm(vote~income+educate+age, data=turnout)
summary(mod)

## End of script
