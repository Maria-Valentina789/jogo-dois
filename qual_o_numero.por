programa
{
	inclua biblioteca Util --> u

	funcao inicio()
	{
		inteiro numero_secreto, palpite, tentativas = 0
		logico acertou = falso

		// Sorteia um número entre 1 e 100
		numero_secreto = u.sorteia(1, 100)

		escreva("=== JOGO DA ADIVINHAÇÃO ===\n")
		escreva("Tente adivinhar o número entre 1 e 100!\n\n")

		enquanto (nao acertou)
		{
			escreva("Digite seu palpite: ")
			leia(palpite)
			tentativas++

			se (palpite == numero_secreto)
			{
				acertou = verdadeiro
				escreva("\nParabéns! Você acertou em ", tentativas, " tentativa(s)!\n")
			}
			senao se (palpite < numero_secreto)
			{
				escreva("Dica: O número secreto é MAIOR.\n\n")
			}
			senao
			{
				escreva("Dica: O número secreto é MENOR.\n\n")
			}
		}
	}
}