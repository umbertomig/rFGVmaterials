###
# Matrizes 1
###

# Criando matrizes (por linhas)
A = matrix(c(1,2,4,3), nrow = 2)
A

# Criando matrizes (por colunas)
B = matrix(c(1,2,3,3,2,1), ncol = 3)
B

C = matrix(c(1,2,3,3,2,1), ncol = 3, byrow = T)
C

# Elementos em matrizes
A[1,2]

# Alterando elementos
A[1,2] = 20

# Colunas (vetor-coluna)
A[,2]

# Linhas (vetor-linha)
A[1,]