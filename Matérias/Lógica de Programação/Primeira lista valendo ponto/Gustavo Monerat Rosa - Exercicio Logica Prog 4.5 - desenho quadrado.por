/*
5) Escreva um programa que lê o tamanho do lado de um quadrado e imprime um quadrado daquele tamanho com asteriscos.
Seu programa deve usar laços de repetição e funcionar para quadrados com lados de todos os tamanhos entre 1 e 20.

Por exemplo, para lado igual a 5:
*****
*****
*****
*****
*****

 */
 
programa{
	
	const inteiro TAM = 20
	
	funcao inicio(){
		inteiro tamanhoQuadrado
		cadeia vetor[TAM]

		faca{
			limpa()
			escreva("\nTamanho do lado do Quadrado entre 1 e 20: ")
			leia(tamanhoQuadrado)
			
		}enquanto(tamanhoQuadrado<2 ou tamanhoQuadrado>19)
		
		
		para(inteiro i=0; i<tamanhoQuadrado; i++){
			para(inteiro j=0; j<tamanhoQuadrado; j++){
				se (j==0){
					vetor[i]="* "
				}
				senao{
					vetor[i]+="* "
				}
			}
			escreva("\n",vetor[i])
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 773; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */