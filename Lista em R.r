## Lista ##
# Jun√ß√£o de diversos tipos de dados em um unico local

# Cria√ß√£o de duas formas

clientes_nomes <- c("Mateus", "Marcos", "Maria", "Sophia")
quantidade <- c(12,10,20,12)
ID_clientes <- seq(1,4)
novo_cliente <- c(TRUE, FALSE, FALSE, TRUE)

balance <- list(ID_clientes, clientes_nomes, quantidade, novo_cliente, matrix(0,4,5), mean)

####
list(ID=seq(1,4), nome=c("marcos" ,"tereza", "roberto", "maria"), quant=c(12,10,22,12), new_client=c(TRUE,FALSE,FALSE,TRUE))

# Nomear elementos da lista

balance2 <-list(ID=ID_clientes, Nomes=clientes_nomes,histÛrico=matrix(0,4,5), media=mean(quantidade))

names(balance) <- c("CÛdigo do cliente", "Nomes", "Quantidades vendidas", "Novo cliente?", "HistÛrico", "MÈdia vendida")

# Acessando elemntos da lista

balance$`Quantidades vendidas` # Encontra o objeto ##lista$objeto
balance$`Quantidades vendidas`[2] #Encontra o elemneto dentro do objeto ##lista$objeto[indice]
balance[[1]] # lista[[indice]]

# Modificando elementos da lista

# lista$objeto[indice] <- dado para troca

balance$Nomes[2] <- "Juliana"
# Quando h· matrizes dentro da lista no indice devemos informar a linha e coluna [ , ]

balance$HistÛrico <- balance$HistÛrico[, -5]

colnames(balance$HistÛrico) <- c("Jan", "Fev", "Mar", "Abr") 
row.names(balance$HistÛrico) <- balance$Nomes
balance <- balance[-6]

# OperaÁıes de lista

balancetwo <- list(data= "05/05/2022", gestor="Marcio", mÍs_ref="outubro")
lista_final <- c(balance, balancetwo)
names(lista_final)

# Tranformando uma lista em vetor

lista_vetor <- unlist(lista_final)
