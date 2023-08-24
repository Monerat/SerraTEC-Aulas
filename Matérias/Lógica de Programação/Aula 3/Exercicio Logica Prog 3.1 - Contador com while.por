//1) Escreva um aplicativo que recebe um número inteiro e mostre os números inteiros que existem entre 1 até esse inteiro.
programa{
	
	funcao inicio(){
	
		inteiro nmDigitado, contador
		logico nmErrado
		
		escreva("\nEscreva o número: ")
		leia(nmDigitado)
		contador = 1
		nmErrado = verdadeiro
		
		enquanto(nmErrado){
			se(nmDigitado<1){
				escreva("Números digitado inválido, escreva um número inteiro maior ou igual a 1: ")
				leia(nmDigitado)
			}
			senao{
				nmErrado = falso
			}
		}
		
		enquanto(nao nmErrado e contador<nmDigitado){
			escreva("\n",contador)
			contador++
		}
		escreva("\n\nO número ",  nmDigitado," possue ",contador-2," número(s) inteiro(s) entre 1 e o ", nmDigitado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 710; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */