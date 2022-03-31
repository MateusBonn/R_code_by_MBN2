

cadastro <- function() {
  Nome <- as.character()
  Primeira_prova <- as.numeric()
  Segunda_prova <- as.numeric()
  Terceira_prova <- as.numeric()
  mediaescolar <- as.numeric()
  Resultado <- as.character()

  Alunos <- data.frame(Nome, Primeira_prova, Segunda_prova, Terceira_prova, mediaescolar, Resultado)
  Alunos$Resultado <- as.character(Alunos$Resultado)
  Alunos$Nome <- as.character(Alunos$Nome)


  i <- 1
  continue <- scan(n = 1)
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
    mediaescolar <- mean(notas)
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

    print("Voce deseja cadastrar mais alunos?")
    print("Digite 1 - para SIM")
    print("Digite 2 - para Nao e retornar ao menu principal")
    continue <- scan(n = 1)
    i <- i + 1
  }
  return(Alunos)
}