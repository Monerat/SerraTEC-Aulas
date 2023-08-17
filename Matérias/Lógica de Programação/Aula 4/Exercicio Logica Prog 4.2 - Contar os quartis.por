/*
 * 2) Escrever um algoritmo que leia uma quantidade desconhecida de números e conte quantos deles estão nos seguintes intervalos: [0-25], [26-50], [51-75] e [76-100]. 
 * A entrada de dados deve terminar quando for lido um número negativo.
 */

programa{
	
	funcao inicio(){
	
		real nmInserido
		inteiro primeiroQuartil,segundoQuartil,terceiroQuartil,quartoQuartil
		
		primeiroQuartil = 0
		segundoQuartil = 0
		terceiroQuartil = 0
		quartoQuartil = 0
		
		faca{
			escreva("\nInsira um numero positivo, caso deseje parar escreva um numero negativo :")
			leia(nmInserido)
			se(nmInserido<26){
				primeiroQuartil++
			}
			senao se(nmInserido<51){
				segundoQuartil++
			}
			senao se(nmInserido<76){
				terceiroQuartil++
			}
			senao se (nmInserido<101){
				quartoQuartil++
			}
			limpa()
		}enquanto(nmInserido>=0)

		escreva("\nQuantidade de numeros dentro do intervalo [0 - 25]: ",primeiroQuartil)
		escreva("\nQuantidade de numeros dentro do intervalo [26 - 50]: ",segundoQuartil)
		escreva("\nQuantidade de numeros dentro do intervalo [51 - 75]: ",terceiroQuartil)
		escreva("\nQuantidade de numeros dentro do intervalo [76 - 100]: ",quartoQuartil)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */