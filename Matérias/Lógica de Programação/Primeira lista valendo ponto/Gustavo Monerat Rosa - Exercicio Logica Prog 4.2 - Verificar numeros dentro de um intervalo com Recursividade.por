/*
2) Faça um programa que verifique e mostre os números entre 1.000 e 2.000 (inclusive) que, quando divididos por 11 produzam resto igual a 2.
 */

programa{
	funcao inteiro numMilaDoisMil(inteiro num){
		se (num>2000 ou num<1000){
			retorne 0
		}
		senao{
			escreva("\n",num)
			se(num%11 ==2){
				escreva(" (quando dividido por 11 o resto é igual a 2)")
			}
			retorne numMilaDoisMil(num+1)
		}
	}
	funcao inicio(){
		numMilaDoisMil(1000)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 457; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */