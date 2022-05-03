###
# Matrizes 1
###

# Matriz vezes escalar
A = matrix(c(1,2,4,3), nrow = 2, byrow = T)
A

2*A

pi*A

# Produto de matrizes
B = matrix(c(1,2,3,3,2,1), ncol = 3, byrow = T)

A%*%B

C = matrix(c(1,2,3,3,2,1), ncol = 2, byrow = T)
C

A%*%C

# Transposta
C
t(C)

A%*%t(C)

# Matriz Inversa
A

solve(A)

A %*% solve(A)

# Sistemas lineares
A = matrix(c(1,2,3,3), ncol = 2, byrow = T)
b = matrix(c(1,5), byrow=T, ncol = 1)
solve(A,b)

# Regressão
X = matrix(c(1,1,1,1,1,1,1,1,2,3,4,5,6,7), byrow=T, ncol = 2)
X

b = matrix(c(1,4,2,5,6,5,8), byrow=T, ncol = 1)
b

solve(t(X)%*%X)%*%t(X)%*%b
