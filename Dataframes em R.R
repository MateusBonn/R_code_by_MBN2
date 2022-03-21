 # Dataframe #

# Making

fornecedor <- c("A","B","E","D","X")
quant_jan <- c(320,230,100,340,10)
quant_fev <- c(220,630,60,50,60)
quant_mar <- c(520,430,100,34,10)

resumo <- cbind(fornecedor,quant_jan,quant_fev,quant_mar)

resumo_df <- as.data.frame(resumo)

#Making two

data.frame(fornecedor=c("A","B","E","D","X"),
           quant_jan=c(320,230,100,340,10),
           quant_fev=c(220,630,60,50,60),
           quant_mar=c(520,430,100,34,10))

# Or

data.frame(v1=fornecedor,v2=quant_jan,v3=quant_fev)

# Acessando dados do dataframe

resumo_df [2,]
resumo_df$quant_jan # Informa apenas as colunas
row.names(resumo_df) <- c("Cliente1", "Cliente2", "Cliente3", "Cliente4", "Cliente5")

#Adicionando e removendo variáveis

resumo_df$quant_abril <- c(230,250,140,320,110)
resumo_df <- resumo_df[,-5]

# Adicionando e removendo casos

resumo_df[6,] <- c("K", 0, 0,55)
resumo_df <- resumo_df[-6,]

# opera

length(resumo_df$fornecedor)
ncol(resumo_df)
nrow(resumo_df)
dim(resumo_df)
dim(resumo_df)[1] # Linhas
dim(resumo_df)[2] # Colunas

names(resumo_df)

View(resumo_df)
summary(resumo_df) # fornece todos os calculos do dataframe
str(resumo_df)
resumo_df$quant_jan <-as.numeric(resumo_df$quant_jan)
resumo_df$quant_fev<-as.numeric(resumo_df$quant_fev)
resumo_df$quant_mar<-as.numeric(resumo_df$quant_mar)
resumo_df$quant_mar[1] <- 130
resumo_df$quant_mar[4] <- 400

mean(resumo_df$quant_jan) # fornece a media dos valores 
median(resumo_df$quant_jan) # fornece o numero meio entre os dados
sd(resumo_df$quant_jan) # desvio padrão [procurar mais informações]
