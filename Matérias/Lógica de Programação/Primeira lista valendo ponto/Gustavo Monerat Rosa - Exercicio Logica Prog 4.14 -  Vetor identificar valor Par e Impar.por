/*
14) Crie um algoritmo que peça ao usuário que informe 10 números inteiros e armazene-os em um vetor.
A seguir, apresente a multiplicação de todos os elementos pares e a soma de todos os elementos
ímpares. 

Exemplo:
0 	1 	2 	3 	4 	5 	6 	7 	8 	9
1 	3 	5 	7 	8 	9 	10 	11 	12 	13

Multiplicação dos elementos pares: 960.
Soma dos elementos ímpares: 49

De acordo com uma definição, um número par é um número que pode ser dividido por 2 sem resto. O zero pode ser dividido por 2 sem resto, então ele é considerado um número par.
 */
 
programa{
	
	const inteiro TAM = 10
	
	funcao inicio(){
	
		inteiro numInseridos[TAM], somaImpar, multPar
		
		somaImpar=0
		multPar = 1
				
		para(inteiro i=0;i<TAM;i++){
			escreva("\ninsira mais ", TAM-i, " numeros: ")
			leia(numInseridos[i])
			se(numInseridos[i]%2==0){
				multPar *= numInseridos[i]
			}
			senao{
				somaImpar+=numInseridos[i]
			}
		}
			
			
		para(inteiro i=0;i<TAM;i++){
			escreva("\t",i)
		}
		escreva("\n")
		para(inteiro i=0;i<TAM;i++){
			escreva("\t",numInseridos[i])
		}
		escreva("\n\nA soma de todos os valores impares do vetor é: ",somaImpar)
		escreva("\n\nA multiplicacao de todos os valores pares do vetor é: ",multPar)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 352; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */