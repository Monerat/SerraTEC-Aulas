/*
 * 3) Fatorial: Escreva um algoritmo que leia um valor inicial A e imprima a seqüência de valores do cálculo de A! e o seu resultado. Ex: 5! = 5 X 4 X 3 X 2 X 1 = 120
 */
programa{
	
	funcao inicio(){
	
		inteiro valInicial, resultadoFinal

		resultadoFinal = 1
		
		escreva("Insira o numero que deseja saber o Fatorial: ")
		leia(valInicial)
		escreva("\nEx: ",valInicial,"! = ")
		enquanto(valInicial>1){
			resultadoFinal = resultadoFinal * valInicial
			escreva(valInicial," X ")
			valInicial--
		}
		escreva("1 = ",resultadoFinal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 210; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */