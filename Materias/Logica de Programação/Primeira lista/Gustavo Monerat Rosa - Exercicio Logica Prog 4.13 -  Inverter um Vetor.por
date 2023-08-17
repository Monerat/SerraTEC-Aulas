/*
13) Faça um algoritmo que leia e mostre um vetor de 5 números inteiros. A seguir, inverta os valores desse
vetor, trocando o primeiro elemento pelo último, segundo pelo penúltimo, e assim sucessivamente
exibindo novamente o vetor invertido. 

Exemplo:
0 	1 	2 	3 	4
1 	2 	3 	4 	5

Vetor invertido
0 	1 	2 	3 	4
5 	4 	3 	2 	1
 */
programa{
	
	const inteiro TAM = 5
	
	funcao inicio(){
	
		inteiro numInseridos[TAM], aux
				
		para(inteiro i=0;i<TAM;i++){
			escreva("\ninsira mais ", TAM-i, " numeros: ")
			leia(numInseridos[i])
		}

		escreva("\n\nO vetor inserido é: \n")
		para(inteiro i=0;i<TAM;i++){
			escreva("\t",i)
		}
		escreva("\n")
		para(inteiro i=0;i<TAM;i++){
			escreva("\t",numInseridos[i])
		}
		escreva("\n\nO vetor invertido é: \n")
		para(inteiro i=0;i<TAM;i++){
			escreva("\t",i)
		}
		escreva("\n")
		para(inteiro i=0;i<TAM/2;i++){
			
			aux=numInseridos[i]
			numInseridos[i] = numInseridos[(TAM-1)-i]
			numInseridos[(TAM-1)-i]=aux
			
		}
		para(inteiro i=0;i<TAM;i++){
			escreva("\t",numInseridos[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 569; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */