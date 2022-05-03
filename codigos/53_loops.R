###
## Loops
###

#### *while*
x <- 1
while (x < 100) {
  cat(x, ', ')
  x<-x+1
}
cat('\nAcabou...')

#### *for*
for (i in 1:10) {
  print(i)
}

lista_pessoas <- c("guilherme", "guisela", "gabi", "natalia")
for (i in lista_pessoas) {
  print(i)
  if (i=='natalia') {
    cat('É do time do Umberto!')
  }
}

for (i in 1:9) {
  cat('Tabuada do ', i , '\n')
  for (j in 1:10) {
    cat (i, ' x ', j , ' = ', i*j, '\n')
  }
  cat ('---------------\n')
}