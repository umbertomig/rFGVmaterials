###
# Operações com vetores
###


#### Operações Vetoriais
x = c(1,2,3,5,6,10)
y = c(2,10,9,5,2,1)
z <- numeric()
for (i in 1:length(x)) {
  z[i] = x[i] + y[i]
}
z

x = c(1,2,3,5,6,10)
y = c(2,10,9,5,2,1)
z = x+y
z

# Soma entradas usando for
soma_for <- function(x,y) {
  z <- numeric()
  for (i in 1:length(x)) {
    z[i] = x[i] + y[i]
  }
  return(z)
}

# Soma vetorizada
soma_vetor <- function(x,y) {
  z <- x+y
  return(z)
}

# Soma entradas usando for
x <- 1:10000
y <- 10001:20000

# Soma com for
system.time(
  {
    soma_for(x,y)
  }
)

# Soma vetorizada
system.time(
  {
    soma_vetor(x,y)
  }
)