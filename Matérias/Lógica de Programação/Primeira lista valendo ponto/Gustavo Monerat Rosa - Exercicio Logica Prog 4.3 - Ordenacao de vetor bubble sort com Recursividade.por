/*
3) Faça um programa que leia três valores (A, B, C) e mostre-os na ordem lida.  Em seguida, mostre-os em ordem crescente e decrescente.
 */
programa{
	inclua biblioteca Util --> utl
	const inteiro TAM = 3
	
	/*
	ESSA FUNÇÃO NECESSITA INCLUIR A BIBLIOTECA UTIL --> utl NO ESCOPO DO PROGRAMA.
	O bubble sort é um algoritmo de ordenação simples que funciona comparando elementos adjacentes e trocando-os se estiverem fora de ordem.
	O processo é repetido até que nenhum elemento esteja mais fora de ordem.
	*/
	funcao bubbleSort(real &numeros[]){
			
		logico troca
		real copia = 0.0
		
		faca{ 
			troca = falso
			para(inteiro i=0;i<utl.numero_elementos(numeros)-1;i++){
				se (numeros[i] > numeros[i+1]){
					copia = numeros[i]
					numeros[i] = numeros[i+1]
					numeros[i+1] = copia
					troca = verdadeiro
				}
			}
		}enquanto(troca)
	}
	
	funcao inicio(){
		real numeros[TAM]
		
		escreva("\nInsira o valor de A: ")
		leia(numeros[0])
		escreva("\nInsira o valor de B: ")
		leia(numeros[1])
		escreva("\nInsira o valor de C: ")
		leia(numeros[2])

		escreva("\nA Ordem lida foi a seguinte: ")
		para (inteiro i=TAM;i>0;i--){
			escreva(numeros[TAM-i],"\t")
		}

		bubbleSort(numeros)
		
		escreva("\nA Ordem crescente foi a seguinte: ")
		para (inteiro i=0;i<TAM;i++){
			escreva(numeros[i],"\t")
		}
		escreva("\nA Ordem decrecente foi a seguinte: ")
		para (inteiro i=TAM;i>0;i--){
			escreva(numeros[i-1],"\t")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1425; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */