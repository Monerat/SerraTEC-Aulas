/*
1) Faça um programa que receba a idade de 15 pessoas e que calcule e mostre:
a) A quantidade de pessoas em cada faixa etária;
b) A percentagem de pessoas na primeira e na última faixa etária, com relação ao total de pessoas: 

Até 15 anos
De 16 a 30 anos
De 31 a 45 anos
De 46 a 60 anos
Acima de 61 anos
*/

programa{
	inclua biblioteca Tipos --> tip
	inclua biblioteca Matematica --> mat
	
	funcao inicio(){
	
		inteiro idadePessoa, primeiraFaixa, segundaFaixa, terceiraFaixa, quartaFaixa, quintaFaixa

		primeiraFaixa = 0
		segundaFaixa = 0
		terceiraFaixa = 0
		quartaFaixa = 0
		quintaFaixa = 0
		
		para(inteiro i=0;i<15;i++){
			escreva("\ninsira a idade da pessoa ",i+1," :")
			leia(idadePessoa)
			se (idadePessoa<0){
				escreva("\nidade Invalida, não existe idade negativa, número ignorado para conferência")
			}
			senao se (idadePessoa<16){
				primeiraFaixa++
			}
			senao se (idadePessoa<30){
				segundaFaixa++
			}
			senao se (idadePessoa<46){
				terceiraFaixa++
			}
			senao se (idadePessoa<61){
				quartaFaixa++
			}
			senao{
				quintaFaixa++
			}	
		}
		escreva("\nA quantidade de pessoas na faixa etária Até 15 anos é :",primeiraFaixa)
		escreva("\nA quantidade de pessoas na faixa etária De 16 a 30 anos é :",segundaFaixa)
		escreva("\nA quantidade de pessoas na faixa etária De 31 a 45 anos é :",terceiraFaixa)
		escreva("\nA quantidade de pessoas na faixa etária De 46 a 60 anos é :",quartaFaixa)
		escreva("\nA quantidade de pessoas na faixa etária Acima de 61 anos é :",quintaFaixa)

		escreva("\n\nA percentagem de pessoas na primeira faixa etária, com relação ao total de pessoas :",mat.arredondar((tip.inteiro_para_real(primeiraFaixa)*100)/(tip.inteiro_para_real(primeiraFaixa)+segundaFaixa+terceiraFaixa+quartaFaixa+quintaFaixa),2), " %")
		escreva("\nA percentagem de pessoas na última faixa etária, com relação ao total de pessoas :",mat.arredondar((tip.inteiro_para_real(quintaFaixa)*100)/(tip.inteiro_para_real(primeiraFaixa)+segundaFaixa+terceiraFaixa+quartaFaixa+quintaFaixa),2), " %")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1892; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */