/*
15) Escreva um algoritmo que solicite ao usuário a entrada de 5 números, e que exiba o somatório desses números na tela.
Após exibir a soma, o programa deve mostrar também os números que o usuário digitou, um por linha.
 */
programa{
	
	const inteiro TAM = 5
	
	funcao inicio(){
	
		real numInseridos[TAM], somaAtual
		
		somaAtual=0.0
	
				
		para(inteiro i=0;i<TAM;i++){
			escreva("\ninsira mais ", TAM-i, " numeros: ")
			leia(numInseridos[i])
			somaAtual+=numInseridos[i]
		}
	
		escreva("\n\nA soma de todos os valores é: ",somaAtual,"\n")
		para(inteiro i=0;i<TAM;i++){
			escreva("\n",numInseridos[i])
		}
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 639; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */