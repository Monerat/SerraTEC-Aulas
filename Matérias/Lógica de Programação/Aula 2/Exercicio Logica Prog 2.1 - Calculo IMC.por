/*
 1) Uma clínica tem necessidade de informar o IMC (Índice de Massa Corporal) dos seus pacientes.
Sabendo que o IMC se calcula da seguinte forma: divide-se o peso (em kg) pelo quadrado da altura (em metros), crie um programa que faça o cálculo do IMC de um dado paciente.

Informe o IMC do paciente.
Caso o IMC seja menor que 18,5, informe que a classificação é Baixo peso.
Caso o IMC seja maior que 18,5 e menor que 24,9, informe que a classificação é Peso saudável.
Caso o IMC seja maior ou igual a 25 e menor que 29,9, informe que a classificação é Sobrepeso.
Caso o IMC seja maior ou igual a 30, informe que a classificação é Obesidade.
*/

programa{
	
	inclua biblioteca Matematica --> mat
	
	funcao inicio(){
		
		real peso, altura, imc
		
		escreva("\nInforme o seu peso em Kg: ")
		leia(peso)
		escreva("\nInforme a sua altura em M: ")
		leia(altura)

		imc = peso/(mat.potencia(altura,2.0))

		se (imc<=18.5){
			escreva("\nA Classificação é Baixo Peso, IMC: ", imc)
		}
		senao se(imc<25.0){
			escreva("\nA Classificação é Peso saudável, IMC: ", imc)
		}
		senao se(imc<30.0){
			escreva("\nA Classificação é Sobrepeso, IMC: ", imc)
		}
		senao{
			escreva("\nA Classificação é Obesidade, IMC: ", imc)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1223; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */