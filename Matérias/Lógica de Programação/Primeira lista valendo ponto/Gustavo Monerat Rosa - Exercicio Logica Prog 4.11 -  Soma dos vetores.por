/*
11) Crie um algoritmo que peça ao usuário que informe 10 números inteiros, armazene-os em um vetor
e apresente a soma de todos os valores. 

Exemplo:
0 	1 	2 	3 	4 	5 	6 	7 	8 	9
1 	3 	5 	7 	8 	9 	10 	11 	12 	13

A soma de todos os valores do vetor é: 79.
 */
programa{
	
	const inteiro TAM = 10
	
	funcao inicio(){
	
		inteiro numInseridos[TAM], somaAtual
		
		somaAtual=0
	
				
		para(inteiro i=0;i<TAM;i++){
			escreva("\ninsira mais ", TAM-i, " numeros: ")
			leia(numInseridos[i])
			somaAtual+=numInseridos[i]
		}
		para(inteiro i=0;i<TAM;i++){
			escreva("\t",i)
		}
		escreva("\n")
		para(inteiro i=0;i<TAM;i++){
			escreva("\t",numInseridos[i])
		}
		escreva("\n\nA soma de todos os valores do vetor é: ",somaAtual)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 274; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */