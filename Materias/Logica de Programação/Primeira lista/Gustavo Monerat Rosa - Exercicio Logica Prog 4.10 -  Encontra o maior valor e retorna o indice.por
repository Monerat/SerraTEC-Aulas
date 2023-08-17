/*
10) 1) Crie um algoritmo que peça ao usuário que informe oito números inteiros e os armazene-os em um
vetor. Apresente o maior elemento e a posição em que ele se encontra no vetor. 

Exemplo:
0	1	2	3	4	5	6	7
4	1 	3 	7 	13  	6 	-5 	9

O maior valor do vetor informado é 13 e ele se encontra no índice 4 do vetor
 */
programa{
	
	const inteiro TAM = 8
	
	funcao inicio(){
	
		inteiro numInseridos[TAM], numMaxAtual, indiceMaxAtual

		numMaxAtual=0
		indiceMaxAtual=0
				
		para(inteiro i=0;i<TAM;i++){
			escreva("\ninsira mais ", TAM-i, " numeros: ")
			leia(numInseridos[i])
			se(i==0){
				numMaxAtual=numInseridos[0]
				indiceMaxAtual=0
			}
			senao se (numMaxAtual<numInseridos[i]){
				numMaxAtual=numInseridos[i]
				indiceMaxAtual=i
			}
		}
		escreva("\n")
		para(inteiro i=0;i<TAM;i++){
			escreva("\t",i)
		}
		escreva("\n")
		para(inteiro i=0;i<TAM;i++){
			escreva("\t",numInseridos[i])
		}
		escreva("\n\nO maior valor do vetor informado é ", numMaxAtual," e ele se encontra no índice ", indiceMaxAtual, " do vetor\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 467; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */