#### Criação de vetores

vendas <- c(12, 15,3,5)
meses <- c("jan","fev","mar","abril")

vendas2 <- scan()

genero <- c("Masculino","Feminino")

vendas
meses

vendas[1]
vendas[4]

vendas[c(1,3)]
vendas[1:3]

### modificando

vendas[3]<- 13
vendas

vendas[c(1,4)]<- c(0,90)
vendas[2:4]<- c(40,35,28)

## Adicionando e removendo indices de um vetor

vendas[-4]
vendas

vendas<-vendas[-4]
vendas

vendas[4]<-70
vendas[5:7]<- c(23,43,15)
vendas

## Operações com vetores

length(vendas)
vendas + 2
vendas * 2
vendas / 2
vendas - 2
