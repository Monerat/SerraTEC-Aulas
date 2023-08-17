/*
 * 3) Fatorial: Escreva um algoritmo que leia um valor inicial A e imprima a seqüência de valores do cálculo de A! e o seu resultado. Ex: 5! = 5 X 4 X 3 X 2 X 1 = 120
 */
programa{
	
	funcao inteiro calFatorial(inteiro numeroEntrada){
		
		se (numeroEntrada>-1 e numeroEntrada<2){
			retorne 1
		}
		senao se (numeroEntrada>1){
			retorne numeroEntrada*calFatorial(numeroEntrada-1)
		}
		senao{
			retorne 0
		}		
	}
	
	funcao inicio(){
	
		inteiro valInicial

		escreva("Insira o numero que deseja saber o Fatorial: ")
		leia(valInicial)
		se (calFatorial(valInicial)==0){
			escreva("\nNumero inválido! Não existe raiz de número negativo.")
		}
		senao {
			escreva(calFatorial(valInicial))
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 707; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */