/*
3) Crie um algoritmo que solicite o dia, o mês e o ano e informe se a data é válida ou inválida.
Considere o mês de fevereiro com 28 dias.
 */
 
programa{

	/*
	São bissextos todos os anos múltiplos de 400, p.ex.: 1600, 2000, 2400, 2800...
	São bissextos todos os múltiplos de 4, exceto se for múltiplo de 100 mas não de 400, p.ex.: 1996, 2000, 2004, 2008, 2012, 2016, 2020, 2024, 2028...
	Não são bissextos anos ímpares e anos pares não múltiplos de 4.
	*/
	
	funcao logico bissexto(inteiro ano){
		se ((ano%400 == 0) ou (ano%4 == 0 e ano%100 != 0)){
			retorne verdadeiro
		}
		senao{
			retorne falso
		}
	}
	
	funcao inicio(){
	
		inteiro dia, mes, ano
		escreva("\nInforme o Dia: ")
		leia(dia)
		escreva("\nInforme o Mes: ")
		leia(mes)
		escreva("\nInforme o Ano: ")
		leia(ano)
	
		se((ano>-1) e (nao bissexto(ano))){
			
			se ((mes == 2) e (dia>0 e dia<29)){
				escreva("\nData válida ", dia,'/',mes,'/',ano)
			}
			senao se ((mes != 2)e(mes>0 e mes<12)e(dia>0 e dia<32)){
				escreva("\nData válida ", dia,'/',mes,'/',ano)
			}
			senao{
				escreva("\nData inválida")
			}
		}
		senao se((ano>-1) e (bissexto(ano))){
			
			se ((mes == 2) e (dia>0 e dia<30)){
				escreva("\nAno Bissexto!")
				escreva("\nData válida ", dia,'/',mes,'/',ano)
			}
			senao se ((mes != 2)e(mes>0 e mes<12)e(dia>0 e dia<32)){
				escreva("\nAno Bissexto!")
				escreva("\nData válida ", dia,'/',mes,'/',ano)
			}
			senao{
				escreva("\nData inválida")
			}
		}
		senao{
			escreva("\nData inválida")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1354; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */