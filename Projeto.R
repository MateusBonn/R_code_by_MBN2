t <- function(CPF, resposta) {
  CPF <- as.numeric()
  resposta <- as.numeric()
  if (resposta == 1) {
    MENUPRICIPAL(CPF)
    option <- as.numeric()
    if (option == 1) {
      id_gerencia()
    }

    if (option == 3) {
      print("Verifique se todos os seus dados est?o corretos")
      Cadastro()
    }

    if (option == 2) {
      cadastro_alunos()
    } else {
      print("Op??o invalida")
      MENUPRINCIPAL()
    }
  }

  if (resposta == 2) {
    idgerencia()
  }
}


idgerencia <- function() {
  print("Digite seu id para acessar o menu")
  CPF <- scan()
  cat("O id", CPF, "est? correto?")
  print("Selecione 1 para sim")
  print("Selecione 2 para n?o")

  resposta <- scan(n = 1)

  return(resposta)
}
MENUPRICIPAL <- function() {
  cat("Bem-vindo ao sistema de cadastro de sucesso")
  print("Digite 3 para cadastrar alunos e suas notas")
  print("Digite 2 para visualizar cadastro")
  print("Digite 1 para voltar ao menu anterior")

  option <- scan(n = 1)
  return(option)
}
cadastro <- function() {
  Nome <- as.character()
  Primeira_prova <- as.numeric()
  Segunda_prova <- as.numeric()
  Terceira_prova <- as.numeric()
  Nota_media <- as.numeric()
  Resultado <- as.character()

  Alunos <- data.frame(Nome, Primeira_prova, Segunda_prova, Terceira_prova, Resultado)
  Alunos$Resultado <- as.character(Alunos$Resultado)
  Alunos$Nome <- as.character(Alunos$Nome)


  i <- 1
  continue <- 1
  while (continue == 1) {
    print("Qua? seria o nome do aluno")
    Nome <- scan(what = character(), nmax = 1)

    print("Nota da primeira prova")
    Primeira_prova <- scan(n = 1)

    print("Nota da segunda prova")
    Segunda_prova <- scan(n = 1)

    print("Nota da terceira prova")
    Terceira_prova <- scan(n = 1)

    notas <- c(Primeira_prova, Segunda_prova, Terceira_prova)

    for (j in 1:length(notas)) {
      cat("Nota na ", j, "prova: ")
      cat("", notas[j], "\n")
    }
    mediaescolar < mean(notas)
    cat("Media do aluno: ", mediaescolar)
    if (mediaescolar >= 7) {
      print("Aluno aprovado")
      Resultado <- "Aprovado"
    }
    if (mediaescolar <= 7) {
      print("Aluno reprovado")
      Resultado <- "Reprovado"
    }
    Alunos[i, ] <- c(Nome, Primeira_prova, Segunda_prova, Terceira_prova, mediaescolar, Resultado)

    print(
      "Voc? deseja cadastrar mais alunos? \n",
      "Digite 1 - para SIM \n",
      "Digite 2 - para N?o e retornar ao menu principal"
    )
    continue <- scan(n = 1)
    i <- i + 1
  }
  return(Alunos)
}
cadastro_alunos <- function(Alunos) {
  print(Alunos)
}

install.packages("forcats")