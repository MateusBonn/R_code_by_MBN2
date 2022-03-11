## Fatores ##
# Usado para categorizar dados  com indice de identificação#

# Criando um factor a base de um vetor

genero <- c("1","2","2","1","2","1","1","3","3")
genero_ft <- as.factor(genero)

str(genero)
str(genero_ft)
 
# ou #

# Criando um factor diretamente

Fator <- factor(c("1","2","2","1","2","1","1","3","3"))
str(Fator)
