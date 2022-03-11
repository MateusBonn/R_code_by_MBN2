## Array ##

# � o local de multiplas matrizes de mesma dimens�o ( array(elemntos, dimens�o, nomesdasdimens�es) )
# Criando a base de matrizes##

a <- matrix(1:6,3,2)
base_matrix <- array(a,c(3,2,2))

b <- c(1,2,3)
c <- c(4,5,6)
d <- cbind(b,c)
matriz_vetores <- array(d,c(3,2,2))
# se a quantidades de dados for menor que as matrizes, se auto preencher� repetindo dados
# Se for maior ocorrer� um erro

# Criando a base de vetores ##

apenas_vetores <- array(c(b,c),c(3,2,2))

 # Dando nomes #

colunas_3 <- c("a","b")
matrizes_3 <- c("matriz A", "matriz B")
linhas_3 <- c("c","d","e")

apenas_vetores <- array(c(b,c),c(3,2,2), dimnames = list(linhas_3,colunas_3,matrizes_3))

# Acessando arrays e alterando ##

dim(apenas_vetores) # fornecer� a quantidade de (linhas, colunas, matriz)
apenas_vetores[1, , ] # fornecer� apenas a linha informada de cada matriz
apenas_vetores[ ,1 , ] # fornecer� apenas a colunas informada de cada matriz
apenas_vetores[ , , 1] # fornecer� apenas a matriz informada

apenas_vetores[1, ,1] <- c("ac","bc") # Modificando uma linha por inteiro de uma matriz
apenas_vetores[1, ,] <- c("ac","bc") # Modificando uma linha por inteiro de todas as matrizes
apenas_vetores[ ,2, ] <- c("bc", "bd", "be") # Modificando uma colunas de cada matriz
apenas_vetores[ , ,2] <- c("Bac", "Bbc", "Bad", "Bbd", "Bae", "Bbe")
# Modifica uma matriz completa

# Opera��es com arrays
sum(base_matrix) #Soma todos os elementos, seja de uma matriz, se informado, ou todas
max(base_matrix) # encontra o maior valor entre as matrizes informadas
# Ou seja, pode-se usar qualquer base operando nos arrays, sempre informando qual � o indice que deseja operar

apply(base_matrix, 2 ,sum) # Faz a opera��o informada no local informado apply(array, 1linha - 2colunas - 3matriz, opera��o)


      