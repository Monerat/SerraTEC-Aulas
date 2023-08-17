/*
7) Faça um programa que recebe a altura de um triangulo em um número inteiro e imprima-o utilizando asteriscos. Veja o Exemplo:

Entrada: 5

*
**
***
****
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
		
		
		para(inteiro i=0; i<1; i++){
			para(inteiro j=0; j<tamanhoQuadrado; j++){
				se (j==0){
					vetor[i]="* "
					escreva("\n",vetor[i])
				}
				senao{
					vetor[i]+="* "
					escreva("\n",vetor[i])
				}
			}
		}	
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 614; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */