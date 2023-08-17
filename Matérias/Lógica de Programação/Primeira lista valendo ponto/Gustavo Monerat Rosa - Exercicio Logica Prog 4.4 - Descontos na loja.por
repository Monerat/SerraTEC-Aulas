/*
4) Uma loja tem tem uma política de descontos de acordo com o valor da compra do cliente.
Os descontos começam acima dos R$500.
A cada 100 reais acima dos R$500,00 o cliente ganha 1% de desconto cumulativo até 25%. 

 Por exemplo: R$500 = 1% || R$600,00 = 2% … etc…

Faça um programa que exiba essa tabela de descontos para cada cliente, no seguinte formato:  

 Valordacompra – porcentagem de desconto – valor final

O total da compra deverá ser armazenado num vetor e a apresentação das compras realizadas e seus descontos, deve ser a partir desse vetor.
 */


programa{
	inclua biblioteca Util --> utl
	inclua biblioteca Matematica --> mat
	inclua biblioteca Tipos --> tip
	const inteiro TAM = 27
	const inteiro TAM_COM = 5
	
	funcao preencherVetor(real &vetor[]){
		para(inteiro i = 0; i < utl.numero_elementos(vetor); i++){
			vetor[i] = 400.0+(i*100.0)
		}		
	}
	
	funcao inicio(){
		real totalCompras[TAM], valorFinal,  valorCompra,vetorCompraCliente[TAM_COM]
		inteiro porcentDesc
		preencherVetor(totalCompras)
		
		
		
		para (inteiro i=0;i<TAM;i++){
			se (totalCompras[i]>=500.0){
				se(totalCompras[i]<2900.0){
					porcentDesc = (totalCompras[i]/100)-4
				}
				senao{
					porcentDesc = 25
				}
			}
			senao{
				porcentDesc = 0
			}
			
		escreva("\n Valor da Compra : ",totalCompras[i],"\tPorcentagem de desconto : ", porcentDesc,'%',"\t\tValor Final (Aplicando o Desconto) : ", totalCompras[i]-(totalCompras[i]*(tip.inteiro_para_real(porcentDesc)/100)))
		}
		escreva("\n---------------------------------------------------------------------------------------------------------------------")
		escreva("\n\t Você pode inserir até 5 clientes")
		escreva("\n---------------------------------------------------------------------------------------------------------------------")
		para(inteiro i=0;i<TAM_COM;i++){
			escreva("\n\nInforme o Valor da compra do ",i+1,"º Cliente: R$ ")
			leia(valorCompra)
			vetorCompraCliente[i]=valorCompra
			se (vetorCompraCliente[i]>=500.0){
				se(vetorCompraCliente[i]<2900.0){
					porcentDesc = (vetorCompraCliente[i]/100)-4
				}
				senao{
					porcentDesc = 25
				}
			}
			senao{
				porcentDesc = 0
			}
			
		escreva("\n Valor da Compra : ",vetorCompraCliente[i],"\tPorcentagem de desconto : ", porcentDesc,'%',"\t\tValor Final (Aplicando o Desconto) : ", vetorCompraCliente[i]-(vetorCompraCliente[i]*(tip.inteiro_para_real(porcentDesc)/100)))
		}
			
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 565; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */