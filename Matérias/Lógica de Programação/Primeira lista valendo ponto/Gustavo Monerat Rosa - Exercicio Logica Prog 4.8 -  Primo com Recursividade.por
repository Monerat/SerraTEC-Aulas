/*
8) Faça um programa que peça um número inteiro e determine se ele é ou não um número primo. Um número primo é aquele que é divisível somente por ele mesmo e por 1.
 */
programa{
	/*
	Um dos métodos mais simples é o método escolar, que consiste em dividir o número por todos os números menores que ele, começando por 2.
	Se o número for divisível por algum dos números, ele não é primo. Se o número não for divisível por nenhum dos números, ele é primo.
	 */
	funcao logico primo(inteiro numero, inteiro i){
		
		se(numero <= 2){ // caso inicial 1 e 2 
			retorne verdadeiro
		}
		senao se (numero%i==0){//checa se resta algo na divisao
			retorne falso
		}
		senao se (i*i>numero){ //vai até a raiz do numero
        		retorne verdadeiro
		}
		senao{
			retorne primo(numero, i+1)
		}
	}
	
	funcao inicio(){
		inteiro numInserido

		faca{
		escreva("Insira o numero a ser testado: ")
		leia(numInserido)

		}enquanto(numInserido<1)
		
		se(primo(numInserido,2)){
			escreva("O numero é primo")
		}
		senao{
			escreva("O numero não é primo")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 753; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */