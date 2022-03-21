## Operadores logicos 
#igualdade e desigualdade

resumo_df

# igualdade 

resumo_df$quant_jan[2] == 100

sum(resumo_df$quant_jan) == 400

# Desigualdade

resumo_df$quant_jan[2] != 100
sum(resumo_df$quant_jan) != 400
resumo_df$quant_jan[2] > 100
resumo_df$quant_jan[2] < 100
resumo_df$quant_jan[2] >= 100
resumo_df$quant_jan[2] <= 100

# Afirmações combinadas
(resumo_df$quant_jan[2] > 100) & (resumo_df$quant_jan[2] < 100)
(resumo_df$quant_jan[2] > 100) & (resumo_df$quant_jan[2] > 100)
# se uma das afirmações for falsa e a outra verdadeira a resposta será falsa
#Ou seja, se um der falso, a resposta final será falso

(resumo_df$quant_jan[2] > 100) | (resumo_df$quant_jan[2] < 100)
(resumo_df$quant_jan[2] > 100) | (resumo_df$quant_jan[2] > 100)
(resumo_df$quant_jan[2] < 100) | (resumo_df$quant_jan[2] > 100)
(resumo_df$quant_jan[2] < 100) | (resumo_df$quant_jan[2] < 100)
 # Se uma uma das afirmações for verdadeira a resposta será verdadeira
# Só dará false se ambas as afirmações forem falsas


## Loop ##

# FOR 

for (i in 1:10) {
  
  
}

# Novos pedidos

resumo_df$quant_Abril <- c(200,300,260,150,430)

# Objetivo: Fazer o usuário revisar seu pedido

for (i in 1:nrow(resumo_df)) {
  cat("Voce pediu", resumo_df$quant_Abril[i], "unidades ao fornecedor",
      resumo_df$fornecedor[i], ". Pedido realizado \n")
  
}

# while

i <- 1
while (i<=nrow(resumo_df)) {
  cat("Voce pediu", resumo_df$quant_Abril[i], "unidades ao fornecedor",
      resumo_df$fornecedor[i], ". Pedido realizado \n")
  i <- i+1
}

# Outro exemplo

m <- 0
while (m==0) {
  print("Quer que continue: SIM (0) NÃO (1)")
  m <- scan(nmax = 1)
  
}

# decision making

# if and else

resumo_df$quant_Abril <- c(130,300,240,145,225)
resumo_df$capacidade <- c(460,500,470,190,100)

# formato #
#if (condição) {
#   comando1
#   comando2
#}

i <- scan(nmax = 1)

if(resumo_df$quant_Abril[i] <= resumo_df$capacidade[i] ) {
  cat("A quantidade do pedido é: ", resumo_df$quant_Abril[i],". \n",
      "Sua solicitação máxima é de: ", resumo_df$capacidade[i], "! \n")
  print("Pedido aprovado")
}

# with else

i <- scan(nmax = 1)

if(resumo_df$quant_Abril[i] <= resumo_df$capacidade[i] ) {
  cat("A quantidade do pedido é: ", resumo_df$quant_Abril[i],". \n",
      "Sua solicitação máxima é de: ", resumo_df$capacidade[i], "! \n")
  print("Pedido aprovado")
}
else
{cat("Desculpa mas sua solicitação supera a capacidade máxima do fornecedor ", resumo_df$fornecedor[i], "\n")
  
}

# if with else and for


