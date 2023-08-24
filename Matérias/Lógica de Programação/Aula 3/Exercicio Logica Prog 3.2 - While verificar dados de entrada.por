//2) Faça um programa que peça uma nota, entre zero e dez. Mostre uma mensagem caso o valor seja inválido e continue pedindo até que o usuário informe um valor válido.
programa{
	
	funcao inicio(){
		real nota
		logico notaErrada = verdadeiro
		
		escreva("\nNota(valores entre 1 e 10)")
		escreva("\nEscreva uma nota: ")
		leia(nota)
		
		enquanto(notaErrada){
			se(nota<=10 e nota>=0){
				notaErrada = falso
				escreva("\nNota está entre o intervalo 0 a 10")
				escreva("\nNota: ", nota)
			}
			senao{
				limpa()
				escreva("\nNota inválida")
				escreva("\nNota(valores entre 1 e 10)")
				escreva("\nEscreva uma nota: ")
				leia(nota)
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 337; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */