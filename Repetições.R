1:20 # sequencia de ponta a ponta
seq(1,20,2) # sequencia aritm�tica progressiva
rep(1:4,5) # repeti��o de cada vetor x vezes
rep(1:3,2, each= 2) # repeti��o de cada vetor x vezes sendo que cada elemento do vetor repetir� each vezes rep(vetor=1:3, time=2, each= 2)

# sequencias usando amostras aleat�rias

sample(1:20,5) # valores do vetor retirados de maneira aleat�ria para amostragem
sample(1:20,5,replace = T) # quando na amostragem n�o h� interferencia em valores iguais, ou seja retira o mesmo valor mais de uma vez
