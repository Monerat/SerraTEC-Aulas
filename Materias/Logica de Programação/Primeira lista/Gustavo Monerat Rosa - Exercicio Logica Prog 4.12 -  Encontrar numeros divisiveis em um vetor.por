/*
12) Faça um algoritmo que leia e mostre um vetor de 10 números inteiros. A seguir, peça ao usuário para
informar um valor inteiro e positivo e mostre todos os números do vetor que são divisíveis por esse
número. 

Exemplo:
0 	1 	2 	3 	4 	5	6 	7 	8 	9
1 	3 	5 	7 	8 	9 	10 	11 	12 	13

Valor informado: 3

Os números que são divisíveis por 3 são: 3, 9 e 12.
 */
programa{
	inclua biblioteca Util --> utl
	const inteiro TAM = 10

	funcao cadeia escrevaVetor( inteiro vetor[]){
		cadeia concatValoresVetor = ""
				
		para (inteiro i=0;i<utl.numero_elementos(vetor);i++){
			se(vetor[i]!=0){
				concatValoresVetor += vetor[i] + " "
			}
		}
		retorne concatValoresVetor
	}
	
	funcao inicio(){
	
		inteiro numInseridos[TAM],numDivisiveis[TAM], numEntrada
		logico entradaValida 
	
		para(inteiro i=0;i<TAM;i++){
			escreva("\ninsira mais ", TAM-i, " numeros: ")
			leia(numInseridos[i])
		}
		para(inteiro i=0;i<TAM;i++){
			escreva("\t",i)
		}
		escreva("\n")
		para(inteiro i=0;i<TAM;i++){
			escreva("\t",numInseridos[i])
		}
		faca{
			escreva("\n\ninforme um inteiro positivo: ")
			leia(numEntrada)
			se (numEntrada>=0){
				para (inteiro i=0;i<TAM;i++){
					se (numInseridos[i]%numEntrada==0){
						numDivisiveis[i] = numInseridos[i]
					}
				}
				entradaValida=falso
			}
			senao {
				escreva("Valor inválido")
				entradaValida=falso
			}
		}enquanto(entradaValida)
		escreva("\n\nValor Informado: ",numEntrada)
		escreva("\nOs numeros que são divisíveis por ",numEntrada ," são: ", escrevaVetor(numDivisiveis),"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 429; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */