/*
2) Uma contabilidade precisa calcular o Imposto de Renda dos funcionários de uma empresa.
Dada a tabela do Imposto de Renda abaixo, solicite o salário de um funcionário e calcule o valor do imposto de renda a pagar, 
tendo efetuado a dedução e informe para o contador o valor da base de cálculo, a alíquota aplicada, o valor deduzido e o imposto a pagar.

Obs.: A parcela a deduzir deve ser multiplicada pelo número de dependentes.

IR na fonte
--------------------------------------------------------------------------------------
Base de cálculo¹ (R$)		Alíquotas em %		Parcela a deduzir do IR (R$)
--------------------------------------------------------------------------------------
Até 2.112,00					0,00				0,00
De 2.112,01 até 2.826,65			7,50				158,40
De 2.826,66 até 3.751,05			15,00			370,40
De 3.751,06 até 4.664,68			22,50			651,73
Acima de 4.664,68				27,50			884,96

Exemplo:

Entrada:

Salário: R$ 3.500,00
Número de dependentes: 1

Processamento:

(3.500 * 0,15) - (370,40 *1) = 154,60

Saída:

Base de Cálculo: R$ 3.500,00
Alíquota IR: 15,00%
Parcela a deduzir: R$ 370,40
Imposto a pagar: R$ 154,60

Obs.: Caso o valor do imposto seja negativo, apresentar valor a pagar igual a zero.
Obs2.: O exercício acima é apenas para treinamento e não representa o cálculo do imposto oficial.
 */

programa{
	inclua biblioteca Texto --> txt
	inclua biblioteca Tipos --> tip
	inclua biblioteca Matematica --> mat
	
	funcao real calculoIR(real salario, inteiro dependentes, real aliquota, real deducao){
		
		real impostoPagar = (salario*aliquota) - (deducao*dependentes)
		se (impostoPagar<0){
			retorne 0.0
		}
		senao{
			retorne impostoPagar
		}
	}
	
	funcao cadeia substituirPonto(real valor){
		
		cadeia valorCad = tip.real_para_cadeia(valor)
		valorCad = txt.substituir(valorCad, ".", ",")
	
	retorne valorCad
	}
		
	funcao inicio(){
	
		real salario, aliquota, deducao
		inteiro dependentes
		
		escreva("\nLevando em considerção o seguinte exemplo de salário: 2000.00")
		escreva("\nInforme o seu salário: ")
		leia(salario)
	
		escreva("\nLevando em considerção o seguinte exemplo de numero de dependentes: 2")
		escreva("\nInforme a quantidade de dependentes: ")
		leia(dependentes)

		se(salario<2112.01){
			aliquota = 0.0
			deducao = 0.0
		}
		senao se(salario<2826.66){
			aliquota = 0.075
			deducao = 158.40
		}
		senao se(salario<3751.06){
			aliquota = 0.15
			deducao = 370.40
		}
		senao se(salario<4664.68){
			aliquota = 0.225
			deducao = 651.73
		}
		senao{
			aliquota = 0.275
			deducao = 884.96
		}
		escreva("\nBase de Cálculo: R$ ", substituirPonto(salario))
		escreva("\nAlíquota IR: ", substituirPonto(mat.arredondar((aliquota*100),2))," %")
		escreva("\nParcela a deduzir: R$ ", substituirPonto(deducao))
		escreva("\nValor Deduzido: R$ ", substituirPonto(deducao*dependentes))
		escreva("\nImposto a pagar: R$ ", substituirPonto(mat.arredondar(calculoIR(salario,dependentes,aliquota,deducao),2)))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 220; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */