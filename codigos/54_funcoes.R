###
# Funções
###

### Criando funções
eh_bisexto <- function(ano) {
  resto = ano %% 4
  if (resto == 0) {
    return('Ano bisexto!')
  } else {
    return('Não é ano bisexto...')
  }
}

# E o resultado para o ano que nasci:
eh_bisexto(1983)