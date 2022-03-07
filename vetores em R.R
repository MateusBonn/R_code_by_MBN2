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

## Operações de vetores com variáveis

length(vendas)
vendas + 2
vendas * 2
vendas / 2
vendas - 2
vendas ^ 2

A <- log(vendas)
log(vendas)
mean(vendas)
max(vendas)
sqrt(vendas)

##crescente
sort(vendas)

## Decrescente
sort(vendas, decreasing = T)
A

## OPERAÇÕES ENTRE VETORES 
#(é obrigatorio que os vetores tenham o mesmo tamnho)

vendas3 <- c(1,2,3,4,5,6,7)
vendas1<- c(7,6,5,4,3,2,1)

vendas3 + vendas1
vendas3 - vendas1
vendas3 * vendas1
vendas3 / vendas1
vendas3 ^ vendas1

v1 <- c(1,2,3,4,5,6)
v2 <- c(1,2,3,4,5,7)

union(v1,v2)
intersect(v1,v2)
setdiff(v1,v2)
setdiff(v2,v1)

v3 <- interaction(v1,v2)
expand.grid(v1,v2)
v3
length(v3)

va <- c(1,2,3,10)
vb <- c(4,5,6)
vc <- c(va,vb)
vc

## Vetores lógicos

v1 > 3
v1 < 3 
v1 == 3
v1 != 3

sum(v1 != 1)
v5 <- c(1,1,1,2,2,2,3,3,3)
sum(v1,v2)
sum(v5 != 1)

match(2, v5)

va <- scan(nmax = 2) ## Diz a quantidade de dados de entrada no vetor
