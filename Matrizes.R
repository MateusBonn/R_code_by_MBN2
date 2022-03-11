## Matrizes ##
## Há duas maneiras de criar uma matriz
Produtos <- c("Arroz", "Feijão", "Carne")
Janeiro <- c(20.20,5.50,28.65)
Rancho <- cbind(Produtos,Janeiro)
Rancho
rancho1 <- rbind(Produtos,Janeiro)
rancho1
# O comando cbind informa cada vetor em forma de coluna
# Já o comando rbind informa cada vetor em forma de linha

# Outra forma de criar uma matriz é usando o comando matrix 
matrix(1:20,nrow = 4,ncol = 5)
### podemos colocar ele em linha, pois por padrão, pelo metodo matrix, a matriz já vem por colunas
matrix (1:20, nrow = 4, ncol = 5, byrow = T)
# se a quantidade de elementos for maior que a matriz ocorrerá um erro
#Se a quantidade de elementos for menor que a matriz ela tentará ocupar esse espaço
matrix(1:30, nrow = 4, ncol = 5)
matrix(1:5, nrow = 4, ncol = 5)

# Acessando a matriz
# x[valordalinha, valordacoluna)

Rancho
Rancho[2,2]
Rancho[2, ]
Rancho[ ,2]

# Como transformar uma string em numericos para um calculo

Rancho
Valores <- as.numeric(Rancho[,2])
Valores

# Alterando a matriz

Rancho [1,] <- c("Sazon", 1.50)
Rancho
Rancho [1,1] <- "alho"
Rancho
Rancho [c(1,3),2] <- c(1.25,30.65)
Rancho
Rancho[-1,-2]

# Operações com matrizes

dim(Rancho) # tamanho da matriz
dim(Rancho)[2] # igual a ncol()
ncol(Rancho)
dim(Rancho)[1] # igual a nrow ()
nrow (Rancho)

as.numeric(Rancho[,2]) -1
# verificar se toda a informação está em numérico
test <- matrix(3,2,1,byrow = T)
test1 <- matrix(2,1,2,byrow = T)
test -1
test +1
test /1
test *2
test ^2
sqrt(test)
log(test)
sum(test)
mean(test)

test + test1
test %*% test1 # Diferente de soma, produto matricial exige ncol = nrow
test1 %*% test

## Curiosidades ##

a <- matrix(1:50,5,10)
image(a)
contour(a)
contour(volcano)
persp(a)
persp(volcano)

