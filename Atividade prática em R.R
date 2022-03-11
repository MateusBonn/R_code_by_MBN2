nome<-c("Marcos de Aguiar","Paula Miranda","Emilio Santos","Priscila de Albuquerque")
#nmax é opcional, serve apenas para dizer a quantidade de informações
## o "character" serve para informar o tipo de dados que ficará armazenada 
n<-scan(what ="character",nmax=4)
nome[4]<-"Pryscilla de Albuquerque"
nome
salario
salario<-0.7*salario
salario

### Atividade pr�tica 3

# 100 pedidos de empr�stimos, apenas 30 recebem 10 sal�rios minimos

selected <- c(1:100)
selected10 <- sample(selected,30)
selected10
winners <- sample(selected10,5)
winners

## Atividade pr�tica 4

Nomes <- scan(what ="character",nmax=4)
idade <- scan(nmax=4)
Salario_informado <- scan(nmax=4)

Pedidos <- cbind(Nomes,Salario_informado,idade)

Pedidos[2,2] <- 5500.33

valor_descontado <- as.numeric(Pedidos[,2]) *0.30
salario_liquido <- as.numeric(Pedidos[,2]) - valor_descontado
media_salarial <- mean(as.numeric(Pedidos[,2]))

colnames(Pedidos) <- c("Nomes","Salario_informado","Idade")            
Pedidos

## Atividade pr�tica 5 ##

Namescol <- c("Nome", "Sal�rio", "Idade", "Motivo do Emprestimo", "Valor solicitado")
Namerow <- c("Cliente 1","Cliente 2","Cliente 3", "Cliente 4" )
Namematriz <- c("Melissa M.", "Carlos P.", "Luciane T.") 
Analise <- array(0,c(4,5,3), dimnames = list(Namerow,Namescol,Namematriz))

Funcionario1 <- cbind(Nome= scan(what="character",nmax=4), 
                      Salario = scan(nmax=4),
                      Idade = scan(nmax=4),
                      Motivo =scan(what = "character", nmax=4),
                      Valor.solicitado =scan(nmax=4))

Funcionario2 <- cbind(Nome= scan(what="character",nmax=4), 
                      Salario = scan(nmax=4),
                      Idade = scan(nmax=4),
                      Motivo =scan(what = "character", nmax=4),
                      Valor.solicitado =scan(nmax=4))

Funcionario3 <- cbind(Nome= scan(what="character",nmax=4), 
                      Salario = scan(nmax=4),
                      Idade = scan(nmax=4),
                      Motivo =scan(what = "character", nmax=4),
                      Valor.solicitado =scan(nmax=4))


Colaboradores <- c(Funcionario1, Funcionario2, Funcionario3)
Analise[,,c(1:3)] <- Colaboradores


Emprestimo_total1 <- as.numeric(Analise[ , 5, 1])
Valor_total_Emprestimo1 <- sum(Emprestimo_total)
Comiss�o_Melissa <- Valor_total_Emprestimo1*0.05 # nolint


Emprestimo_total2 <- as.numeric(Analise[ , 5, 2])
Valor_total_Emprestimo2 <- sum(Emprestimo_total2)
Comiss�o_Carlos <- Valor_total_Emprestimo2*0.05

Emprestimo_total3 <- as.numeric(Analise[ , 5, 3])
Valor_total_Emprestimo3 <- sum(Emprestimo_total3)
Comiss�o_Luciana <- Valor_total_Emprestimo3*0.05

Comiss�es <- cbind(Comiss�o_Melissa,Comiss�o_Carlos,Comiss�o_Luciana)
row.names(Comiss�es) <- "Janeiro"
