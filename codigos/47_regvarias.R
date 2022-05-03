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

# Exemplo: explicações para ganho no crime
mod <- lm(barb2~prsexp2+prscorr2, data=PErisk)
summary(mod)

# Outro exemplo
data(turnout)
head(turnout)
summary(turnout)

mod <- lm(vote~income+educate+age, data=turnout)
summary(mod)

## End of script
