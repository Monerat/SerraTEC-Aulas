programa
{
	
	funcao inicio()
	{
		inteiro numero1, numero2, numero3
		
		numero1 = 4
		numero2 = 3
		numero3 = 2

		se(numero1<numero2 e numero1<numero3){
			escreva("O menor numero é: ",numero1)
		}
		senao{
			se (numero2<numero3){
				escreva("O menor numero é: ",numero2)
			}
			senao{
				escreva("O menor numero é: ",numero3)
			}
		}
		
		escreva("\n")
		
		se(numero1>numero2 e numero1>numero3){
			escreva("O maior numero é: ",numero1)
		}
		senao{
			se (numero2>numero3){
				escreva("O maior numero é: ",numero2)
			}
			senao{
				escreva("O maior numero é: ",numero3)
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 602; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */