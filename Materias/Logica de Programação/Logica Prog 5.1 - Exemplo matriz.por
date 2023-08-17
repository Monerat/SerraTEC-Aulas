/*
 * Crie um algoritmo que inclua numa matriz o nome, o sobrenome e a rua de 5 pessoas
 * Crie uma função para localizar a pessoa pelo nome e outra para localizar pelo
 * sobrenome e outra pelo endereço
 */
programa{
	inclua biblioteca Util --> utl
	const inteiro TAM = 5

	funcao compararCadeiaNome(cadeia vetor[][],cadeia nome){
			para (inteiro i=0;i<3;i++){
				se (vetor[i][0] == nome){
					escreva("Pessoa Encontrada! Ela se encontra no indice ",i," ",0,"\n")
					escreva(vetor[i][0]," ",vetor[i][1]," ",vetor[i][2])
					utl.aguarde(2000)
				}
			}
	}
	
	funcao  compararCadeiaSobrenome(cadeia vetor[][],cadeia sobrenome){
			para (inteiro i=0;i<3;i++){
				se (vetor[i][1] == sobrenome){
					escreva("Pessoa Encontrada! Ela se encontra no indice ",i," ",0,"\n")
					escreva(vetor[i][0]," ",vetor[i][1]," ",vetor[i][2])
					utl.aguarde(2000)

				}
			}
	}
	
	funcao  compararCadeiaRua(cadeia vetor[][],cadeia rua){
			para (inteiro i=0;i<3;i++){
				se (vetor[i][2] == rua){
					escreva("\nPessoa Encontrada! Ela se encontra no indice ",i," ",0,"\n")
					escreva(vetor[i][0]," ",vetor[i][1]," ",vetor[i][2])
					utl.aguarde(2000)
				}
			}
	}

	funcao escreverMenu(){
		escreva("\n--------------------------------")
		escreva("\n\tBuscar pessoas")
		escreva("\n--------------------------------")
		escreva("\n1 - Buscar pelo Nome")
		escreva("\n2 - Buscar pelo Sobrenome")
		escreva("\n3 - Buscar pelo Endereço")
		escreva("\n--------------------------------\n")
	}
	funcao inicio(){
		
		cadeia matrizBase[TAM][3], nome, sobrenome, rua
		logico nParar = verdadeiro
		inteiro opcoes
		
		para(inteiro i=0; i<TAM;i++){
			escreva("\ninforme o nome: ")
			leia(matrizBase[i][0])
	
			escreva("\ninforme o Sobrenome: ")
			leia(matrizBase[i][1])
	
			escreva("\ninforme o endereço: ")
			leia(matrizBase[i][2])
		}
		faca{
			limpa()
			escreverMenu()
			leia(opcoes)
			escolha(opcoes){
				caso 1:
					escreva("\nInforme o nome para buscar na base: ")
					leia(nome)
					compararCadeiaNome(matrizBase,nome)
				pare
				
				caso 2:
					escreva("\nInforme o sobrenome para buscar na base: ")
					leia(sobrenome)
					compararCadeiaSobrenome(matrizBase,sobrenome)
				pare
				caso 3:
					escreva("\nInforme o endereço para buscar na base: ")
					leia(rua)
					compararCadeiaRua(matrizBase,rua)
				pare
				caso contrario:
					escreva("\nDado invalido")
			}
		}enquanto(nParar)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 275; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */