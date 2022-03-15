## Fatores ##
# Usado para categorizar dados  com indice de identifica<U+FFFD><U+FFFD>o#

# Criando um factor a base de um vetor

genero <- c("1", "2", "2", "1", "2", "1", "1", "3", "3")
genero_ft <- as.factor(genero)

str(genero)
str(genero_ft)

# ou #

# Criando um factor diretamente

Fator <- factor(c("1", "2", "2", "1", "2", "1", "1", "3", "3"))
str(Fator)

# Acessando e modificando fatores

genero_ft[5] # acessa o indice
length(genero_ft)
genero_ft[length(genero_ft)]

# Modificando o fator
genero_ft[5] <- 3

# Operações com fatores
Produtos_Online <- factor(c("Tv A", "Tv B", "Tv B", "Tv C"))
Produtos_presencial <- factor(c("Tv A", "Tv C", "Tv D", "Tv C", "Tv C", "Tv D"))

library(forcats)

Vendas <- fct_c(Produtos_Online, Produtos_presencial)

# ALTERANDO O LABEL

plot(genero_ft)

Alterado <- lvls_revalue(genero_ft, c("Masculino", "Feminino", "Outros")) # Não altera a variável original apenas os labels (todos)

plot(Alterado)

levels(genero_ft) <- c("Masculino", "Feminino", "Outros") # Altera o valor da variável


label_especifico <- fct_recode(genero_ft, Masculino = "1") # Altera um label especifico ainda preservando a variável original

plot(label_especifico)

# Agrupando de niveis

local <- factor(c("net", "internet", "Instagram", "Facebook", "Amigo"))
Indica <- fct_collapse(local,
  Pesquisa = c("net", "internet"),
  rede_social = c("Instagram", "Facebook"),
  Indicação = c("Amigo")
)

plot(Indica)

install.packages("languageserver")

# Agrupamento por frequencia usando fct_lump

estado_civil <- factor(c("solteiro", "solteiro", "casado", "casado", "união estavel", "viuvo", "divorciado"))
plot(estado_civil)

Agrupado <- fct_lump(estado_civil, 2, other_level = "Outros") # O agrupamento definindo os principais mais usados e os outros - Com nomes denominado pelo criador -
plot(Agrupado)

# Reordenando os niveis dos fatores

# Por padrão o R ordena os fatores por ordem alfabetica, mas podemos definir a ordem

escolaridade <- factor(c("Superior", "Fundamental", "Pós-graduação", "Ensino médio", "Superior")) # Factor com ordenação em ordem alfabética por padrão

plot(escolaridade)


Reordenado <- fct_relevel(escolaridade, c("Fundamental", "Ensino médio", "Superior", "Pós-graduação")) # Factor reordenado conforme informado na função - Racional

plot(Reordenado)

length(escolaridade)

Faturamento <- c(scan(nmax = 5))

plot(Faturamento)

Reorder <- fct_reorder(escolaridade, Faturamento, mean) # Reordena os fatores do primeiro com base da função (3° item) do segundo elemento
plot(Reorder)