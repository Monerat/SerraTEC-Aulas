/*
Uma loja de ferramentas contratou você para criar um relatório de orçamento para os seus clientes.
Os produtos que ela vende são:

. Parafusos
. Arruelas
. Porcas
. Chaves de fenda
. Brocas
. Buchas

É necessário informar a quantidade de cada um dos produtos.
Calcular o total bruto a pagar e perguntar a forma de pagamento.

/FUNCAO METODO DE PAGAMENTO
Se for a vista, o total sofrerá um desconto de 5%.
Se for no cartão, o total não sofrerá alteração.
Se for à prazo, o total sofrerá um acréscimo de 5%.

No relatório deve conter os seguintes dados:

Nome do cliente
Validade do orçamento
Código dos produtos
Descrição dos produtos
Quantidade dos produtos
Valor unitário dos produtos
Percentual de desconto ou acréscimo dos produtos
Valor total dos produtos
Valor total bruto do orçamento 
Percentual de desconto do orçamento
Valor líquido do orçamento

Exemplo:

Nome do cliente:               Validade:

cód.produto | Nome Produto | vl unit   |  Desc/Acrésc  |   vl Total
1
2
3
4
5
6

Total Bruto =
Desc/Acrésc = 
Total Líquido = 

CARACTERISTISCAS DO PARAFUSO
0 COD PRODUTO
1 NOME
2 VALOR UNITADO
3 Quantidade Estoque

TEMOS 6 PRODUTOS CADA UM COM 3 CARACTERISTICAS

para incluir o produto no orçamento o que eu preciso 
0 nome do produto
1 valor unitario do produto
2 quantidade do produto

jose, data 

*/
programa{
	
	inclua biblioteca Util --> utl
	inclua biblioteca Calendario --> cal
	inclua biblioteca Tipos --> tip
	inclua biblioteca Texto --> txt
	inclua biblioteca Matematica --> mat
	
	const inteiro TAM_LINHA = 6
	const inteiro TAM_COL = 4 
	const inteiro TAM_COL_ORCAMENTO = 4 
	
	
	funcao inicio(){
		
		real descontoAplicado,totalBrutoOrc,totalAdicaoOrc, totalLiquidoOrc
		inteiro opcaoOrcamento
		logico nParar = verdadeiro
		cadeia nomeCliente, dataOrc,validadeOrc//dd/mm/yyyy
		cadeia calculoOrcamento[TAM_LINHA][TAM_COL_ORCAMENTO]//0 - COD PRODUTO, 1 - BRUTO, 2 - ACRESCIMO OU DECRESCIMO, 3 - LIQUIDO
		cadeia listaProdOrcamento[TAM_LINHA][TAM_COL_ORCAMENTO]//0 - COD PRODUTO, 1 -  NOME, 2 - VALOR UNITARIO, 3 - QUANTIDADE
		cadeia baseProdutos[TAM_LINHA][TAM_COL]={//0 - COD PRODUTO, 1 -  NOME, 2 - VALOR UNITARIO, 3 - QUANTIDADE ESTOQUE
										
										{"1","Parafuso","1.5","300"},
										{"2","Arruelas","0.5","250"},
										{"3","Porcas","0.3","160"},
										{"4","Chave de Fenda","15.0","25"},
										{"5","Brocas","3.0","60"},
										{"6","Buchas","0.25","350"}
										}

		preencherOrcamento(listaProdOrcamento) 	//inicializar matriz Novamente por causa do portugol, se nao é null.
		preencherOrcamento(calculoOrcamento)	//inicializar matriz Novamente por causa do portugol, se nao é null.
		nomeCliente = "Crie primeiro o Orçamento!"
		dataOrc = "Crie primeiro o Orçamento!"
		validadeOrc = "Crie primeiro o Orçamento!"
		totalBrutoOrc = 0.0
		totalAdicaoOrc = 0.0
		totalLiquidoOrc = 0.0
		descontoAplicado = 0.0
		
		para (inteiro i=0; i<TAM_COL;i++){
			espacamentoPadrao(i,baseProdutos)
		}
		
		faca{
			menuOrcamento()
			leia(opcaoOrcamento)
			escolha(opcaoOrcamento){
				caso 1:
					limpa()
					escreva("\nInsira Nome do Cliente: ")
					leia(nomeCliente)
					enquanto (verificarNomeValido(nomeCliente)){
						escreva("\nInsira Nome do Cliente: ")
						leia(nomeCliente)
						limpa()
					}
					incluirProduto(baseProdutos,listaProdOrcamento)
					descontoAplicado = metodoPagamento()
					calcularDados(descontoAplicado,listaProdOrcamento,calculoOrcamento)
					totalBrutoOrc = calculaTotalCOL(1,calculoOrcamento)
					totalAdicaoOrc = calculaTotalCOL(2,calculoOrcamento)
					totalLiquidoOrc = calculaTotalCOL(3,calculoOrcamento)
					dataOrc = cal.dia_mes_atual()+"/"+cal.mes_atual()+"/"+cal.ano_atual()
					validadeOrc=calcularValidadeOrc()
					para (inteiro i=0; i<TAM_COL_ORCAMENTO;i++){
						espacamentoPadrao(i,listaProdOrcamento)
					}			
				pare
				caso 2:
					menuAlteracao()
					se(escolhaAlteracao()){
						alterarOrca(baseProdutos,listaProdOrcamento)
						calcularDados(descontoAplicado,listaProdOrcamento,calculoOrcamento)
						totalBrutoOrc = calculaTotalCOL(1,calculoOrcamento)
						totalAdicaoOrc = calculaTotalCOL(2,calculoOrcamento)
						totalLiquidoOrc = calculaTotalCOL(3,calculoOrcamento)
					}
					senao{
						descontoAplicado = metodoPagamento()
						calcularDados(descontoAplicado,listaProdOrcamento,calculoOrcamento)
						totalBrutoOrc = calculaTotalCOL(1,calculoOrcamento)
						totalAdicaoOrc = calculaTotalCOL(2,calculoOrcamento)
						totalLiquidoOrc = calculaTotalCOL(3,calculoOrcamento)
					}
				pare
				caso 3:
					preencherOrcamento(listaProdOrcamento)
				pare
				caso 4:
					imprimirOrcamento(dataOrc,validadeOrc,nomeCliente,listaProdOrcamento,calculoOrcamento,descontoAplicado,totalBrutoOrc,totalAdicaoOrc,totalLiquidoOrc)
					utl.aguarde(10000)
				pare
				caso 5:
					nParar = falso
				pare
				caso contrario:
					escreva("Opção invalida!")
					utl.aguarde(1500)
			}
		}enquanto(nParar)
	}
	
	funcao menuProd(cadeia matriz[][]){//1 - Responsável pelos testes: Andre
		//cria o menu de produtos cadastrados na Base
		limpa()
		escreva(	"\n-----------------------------------------------------------------------------------------------",
										"\n\t\t\t\t\t ITEM DESEJADO",
				"\n-----------------------------------------------------------------------------------------------",
				"\nCOD PRODUTO       \tNOME PRODUTO      \t  VALOR UNITARIO    \t   QUANTIDADE ESTOQUE",
				"\n-----------------------------------------------------------------------------------------------")
		para(inteiro i=0; i<TAM_LINHA;i++){
			escreva("\n")
			para(inteiro j=0; j<TAM_COL;j++){
				escreva("| ",matriz[i][j] ,"\t\t |")
			}
		}
		escreva("\n-----------------------------------------------------------------------------------------------\n")
	}
	
	funcao menuOrcamento(){
		//cria o menu Orçamento
		limpa()
		escreva(	"\n------------------------------------------------------------------------------------",
				"\n\t\t\t\t Loja do Grupo 1",
				"\n------------------------------------------------------------------------------------",
				"\n\t\t\t\t Orçamento",
				"\n------------------------------------------------------------------------------------",
				"\n1- Criar orçamento",
				"\n2- Alterar orçamento",
				"\n3- Excluir orçamento",
				"\n4- Imprimir orçamento",
				"\n5- Sair",
				"\n------------------------------------------------------------------------------------\n")
	}

	funcao menuAlteracao(){
		//cria o menu alteração
		escreva(	"\n-----------------------------",
				"\n Alteração",
		 		"\n-----------------------------",
		 		"\n1- Produtos",
		 		"\n2- Forma pagto",
		 		"\n-----------------------------\n")
	}
	
	funcao incluirProduto(cadeia matrizBase[][],cadeia &matrizORC[][]){//2 - Responsável pelos testes: Douglas
		//Inclui produtos no orcamento
		logico nParar,valorEncontrado, continue
		inteiro codProduto,quantidadeProd,contadorLinha, linhaOrcProd, aux
		caracter opcao = 'n'
		
		contadorLinha = 0
		nParar = verdadeiro
		continue = verdadeiro
		
		//quantidade do produto
		faca{
			
			
			se ((TAM_LINHA-contadorLinha)<1){
				nParar=falso
			}
			senao se(opcao=='s'){
				nParar=falso
			}
			senao{
				menuProd(matrizBase)
				escreva("\nVocê tem direito a mais ",TAM_LINHA-contadorLinha," inserções de Produto.")
				escreva("\nInsira o Cod do produto: ")
				leia(codProduto)
				
				valorEncontrado = falso
				continue = verdadeiro
				
				faca{
					escreva("\nInsira quantidade do produto: ")
					leia(quantidadeProd)
					se (quantidadeProd<1){
						escreva(	"\nQuantidade de produto inválida!",
								"\nA quantidade deve ser maior que 0\n")
						utl.aguarde(1000)
					}
					senao{
						continue = falso
					}
				}enquanto(continue)
				
				//VERIFICAR SE O COD PROD JÁ ESTÁ INSERIDO NA MATRIZ ORCAMENTO, SE ESTIVER, ADICIONAR SOMENTE QTD
				linhaOrcProd = achouCodnaORC(codProduto, matrizORC)
				se(nao (linhaOrcProd<0 ou linhaOrcProd>TAM_LINHA)){
					aux = tip.cadeia_para_inteiro(matrizORC[linhaOrcProd][3],10)
					aux += quantidadeProd
					matrizORC[linhaOrcProd][3] = tip.inteiro_para_cadeia(aux,10) 
					valorEncontrado = verdadeiro
				}
				senao se(linhaOrcProd == -1){					
					para(inteiro i=0;i<TAM_LINHA;i++){
						se (matrizBase[i][0]==tip.inteiro_para_cadeia(codProduto,10)){
							//inserir nome produto e valor unitario
							//buscar codProduto na Base 'col 0'
							//Conferir se esse produto não está na matrizOrcamento se estiver adicionar somente quantidade
							matrizORC[contadorLinha][0] = matrizBase[i][0]
							matrizORC[contadorLinha][1] = matrizBase[i][1]
							matrizORC[contadorLinha][2] = matrizBase[i][2]
							matrizORC[contadorLinha][3] = tip.inteiro_para_cadeia(quantidadeProd,10)
							contadorLinha++
							valorEncontrado = verdadeiro
							pare
						}
					}
				}
				se (nao valorEncontrado){
					escreva("\nCodigo de produto inválido!\n")
					utl.aguarde(1500)
				}
				se (nParar){
					imprimirProdOrc(matrizORC)
				}
				escreva("\nDeseja parar?(S/N)")
				leia(opcao)
				opcao = conversaoCaixaBaixa(opcao)
			}	
		}enquanto(nParar)
	}
		
	funcao real metodoPagamento(){
		//Identifica qual o metodo de Pagamento e retorna o valor do desconto
		inteiro metodoPag
		real desconto
		logico nParar = verdadeiro
		desconto = 0.0
		faca{
			limpa()
			se (nParar){
				escreva(	"\n------------------------------------------------------------------------------------",
						"\nInsira o Metodo de pagamento: ",
						"\n------------------------------------------------------------------------------------",
						"\n 1- À vista",
						"\n 2- Cartão",
						"\n 3- À prazo",
						"\n------------------------------------------------------------------------------------\n")
			}
			
			
			leia(metodoPag)	
			escolha(metodoPag){
				caso 1:
					desconto = -0.05
					nParar=falso
				pare
				caso 2:
					desconto = 0.0
					nParar=falso
				pare
				caso 3:
					desconto = 0.05
					nParar=falso
				pare
				caso contrario:
					escreva("\nMetodo de pagamento inválido!")
					utl.aguarde(1500)
				pare
			}
		}enquanto (nParar)
		retorne desconto
	}
	
	funcao cadeia calcularValidadeOrc(){
		//Calcula a validade do orcamento
		inteiro prazo = 7
		cadeia dataValidade
		inteiro dia = (cal.dia_mes_atual() + prazo), 
			   mes = cal.mes_atual(), 
			   ano = cal.ano_atual()
			   
		se(ano% 4 == 0 e mes == 2) {
			se(dia > 29) {
				dia = dia - 29
				mes++
			}	
		} senao se (dia > 28 e mes == 2) {
			dia = dia - 28
			mes++ 
		}
		
		se (dia > 31 ou dia < 1 ou mes > 12 ou mes < 1 ou ano < 0) {
			dia = dia - 31
			mes++
		} se (dia > 30 e (mes == 4 ou mes == 6 ou mes == 9 ou mes == 11)) {
			dia = dia - 30
			mes++
		} se(mes > 12) {
			mes = mes - 12
			ano++
		}
		
		dataValidade = dia + "/"  + mes +  "/" + ano + "\n"
		retorne dataValidade
	}
	
	funcao inteiro espacamentoPadraoOrcamentoFinal(inteiro coluna ,cadeia &matrizBase[][]){//3 
     	// Verifica qual é a maior cadeia na coluna 'coluna' e adiciona nas demais cadeias espaços em branco para ficarem com o mesmo tamanho retorna o maior caractere
     	inteiro maisCaracteres, txtCadeia, numEspacos
     	
		maisCaracteres = 0
		
     	para(inteiro i = 0; i<TAM_LINHA+1 ; i++){
     		txtCadeia = txt.numero_caracteres(matrizBase[i][coluna])
     		se (txtCadeia>maisCaracteres){
     			maisCaracteres = txtCadeia
     		}
     		
     	}
     	//maisCaracteres = numero de caracteres da maior cadeia dentro da matriz[i][coluna]
     	para(inteiro i = 0; i<TAM_LINHA+1 ; i++){
     		se(txt.numero_caracteres(matrizBase[i][coluna]) < maisCaracteres){ //8 < 14 = 6
     			numEspacos =  maisCaracteres-txt.numero_caracteres(matrizBase[i][coluna]) // numEspacos *" "
     			para(inteiro j=0; j<numEspacos;j++)
     				matrizBase[i][coluna] += " "
     		}
     	}
     	retorne maisCaracteres
	}
	
	funcao inteiro espacamentoPadrao(inteiro coluna ,cadeia &matrizBase[][]){//3 
     	// Verifica qual é a maior cadeia na coluna 'coluna' e adiciona nas demais cadeias espaços em branco para ficarem com o mesmo tamanho retorna o maior caractere
     	inteiro maisCaracteres, txtCadeia, numEspacos
     	
		maisCaracteres = 0
		
     	para(inteiro i = 0; i<TAM_LINHA ; i++){
     		txtCadeia = txt.numero_caracteres(matrizBase[i][coluna])
     		se (txtCadeia>maisCaracteres){
     			maisCaracteres = txtCadeia
     		}
     		
     	}
     	//maisCaracteres = numero de caracteres da maior cadeia dentro da matriz[i][coluna]
     	para(inteiro i = 0; i<TAM_LINHA ; i++){
     		se(txt.numero_caracteres(matrizBase[i][coluna]) < maisCaracteres){ //8 < 14 = 6
     			numEspacos =  maisCaracteres-txt.numero_caracteres(matrizBase[i][coluna]) // numEspacos *" "
     			para(inteiro j=0; j<numEspacos;j++)
     				matrizBase[i][coluna] += " "
     		}
     	}
     	retorne maisCaracteres
	}

	funcao espacamentoPadraoVetor(inteiro tamanho, inteiro indice, cadeia &vetor[]){//3 
     	//adiciona nas demais cadeias espaços em branco para ficarem com o mesmo tamanho retorna o maior caractere
     	inteiro numEspacos
		numEspacos =  tamanho-txt.numero_caracteres(vetor[indice]) // numEspacos *" "
		para(inteiro j=0; j<numEspacos;j++){
			vetor[indice] += " "
		}
	}
	
	funcao caracter conversaoCaixaBaixa(caracter letra){//4 - Responsável pelos testes: Alex
     	//converte o caractere para caixa baixa
     	cadeia palavra
     	
     	palavra = tip.caracter_para_cadeia(letra)//caracter -> cadeia
     	palavra = txt.caixa_baixa(palavra)		// "N" --> "n"
     	letra = tip.cadeia_para_caracter(palavra) // cadeia --> caracter
     	retorne letra
	}
	
	funcao preencherOrcamento(cadeia &matrizBase[][]){//5 -  Responsável pelos testes: Nathan
		//preenche a matriz com espaços em branco (feita para a matriz orcamento)
		para(inteiro i = 0; i<TAM_LINHA ; i++){
	     	para (inteiro j = 0; j < TAM_COL_ORCAMENTO;j++){
	     		matrizBase[i][j] = " "
	        }
	    }
	}
	
	funcao alterarOrca(cadeia matrizBase[][],cadeia &matrizOrc[][]){//6 - Responsável pelos testes: Bernardo
		//altera na matriz orcamento um produto já inserido
		inteiro codAlteracao
		imprimirProdOrc(matrizOrc)
		escreva("\nInsira qual o Cod do produto do item que você deseja alterar: ")
		leia(codAlteracao)

		se (codAlteracao<1 ou codAlteracao>TAM_LINHA){
			escreva("\nCod invalido!")
		}
		senao{
			alterarProd(codAlteracao,matrizBase,matrizOrc)
		}
			
	}

	funcao imprimirOrcamento(cadeia diaAtual,cadeia diaVenc,cadeia nomeCliente ,cadeia &matrizOrc[][], cadeia &matrizCalOrc[][],real descontoAplicado, real totalBruto, real totalAdicao,real totalLiquido){//7 - 
		cadeia vetorCabecalho[] = {"COD PRODUTO","NOME PRODUTO","VALOR UNITARIO","QUANTIDADE","VALOR BRUTO", "VALOR ADICAO", "VALOR LIQUIDO"}
		cadeia matrizImprimir[TAM_LINHA+1][7] 
		inteiro tamanho, contador, contadori =1

		se (descontoAplicado<0){
			vetorCabecalho[5] = "VALOR DESCONTO"
		}
		para(inteiro j=0;j<utl.numero_elementos(vetorCabecalho);j++){
				matrizImprimir[0][j] = vetorCabecalho[j]
		}
		
		para(inteiro i=0;i<TAM_LINHA;i++){
			contador = 0
			para(inteiro j=0;j<TAM_COL_ORCAMENTO;j++){
				matrizImprimir[contadori+i][contador] = matrizOrc[i][j]
				contador++
			}
			para(inteiro k=1;k<TAM_COL_ORCAMENTO;k++){
				matrizImprimir[contadori+i][contador] = matrizCalOrc[i][k]
				contador++ 
			}
		}
		
		
		limpa()
		escreva(	"\n-------------------------------------------------------------------------------------------------------------------------------------------------------------------",
				"\nOlá Sr(a) ", nomeCliente,
				"\nHojé é dia: ",diaAtual,
				"\nEste Orçamento tem validade até o Dia: ", diaVenc,
				"\n-------------------------------------------------------------------------------------------------------------------------------------------------------------------\n")
		
		
		para(inteiro u = 0; u<utl.numero_elementos(vetorCabecalho);u++){
			espacamentoPadraoOrcamentoFinal(u,matrizImprimir)
		}
		para(inteiro i = 0; i< TAM_LINHA+1; i++){
			para(inteiro j = 0; j<utl.numero_elementos(vetorCabecalho);j++){
				escreva(" | ",matrizImprimir[i][j],"\t |")
			}
			se (i==0){
				escreva("\n-------------------------------------------------------------------------------------------------------------------------------------------------------------------")
			}
			escreva("\n")
		}
		
		escreva(	"\n-------------------------------------------------------------------------------------------------------------------------------------------------------------------",
				"\nValor Total Bruto: R$ ",totalBruto)
		se(totalAdicao<0){
			escreva("\nValor do Desconto Total: R$ ",totalAdicao)
		}
		senao{
			escreva("\nValor do Adicao Total: R$ ",totalAdicao)
		}
				
		escreva("\nValor Total Liquido: R$ ",totalLiquido)
		
	}

	funcao imprimirProdOrc(cadeia &matrizOrc[][]){
		inteiro tamanho
		cadeia vetor[] = {"COD PRODUTO","NOME PRODUTO","VALOR UNITARIO","QUANTIDADE"}
		
		para(inteiro u=0;u<TAM_COL_ORCAMENTO;u++){
			tamanho = espacamentoPadrao(u,matrizOrc)
			espacamentoPadraoVetor(tamanho,u,vetor)
		}
		para(inteiro i=0;i<4;i++){
			escreva(" | ",vetor[i],"\t |")
		}
		escreva("\n----------------------------------------------------------------------------------------------------------\n")
		para(inteiro i=0;i<TAM_LINHA;i++){
			para(inteiro j=0;j<TAM_COL_ORCAMENTO;j++){
				escreva(" | ",matrizOrc[i][j],"\t\t |")
			}
		escreva("\n")
		}
	}
	
	funcao alterarProd(inteiro codProd, cadeia matrizBase[][],cadeia &matrizOrc[][]){//9 - Responsável pelos testes: Eduardo
		// faz o processamento de alterar um produto
		inteiro quantidadeProd,codProdutoBase
		logico valorEncontrado,valorEncontradoOrc, nParar

		nParar = verdadeiro
		valorEncontrado = falso
		valorEncontradoOrc = falso
		
		para(inteiro i=0;i<TAM_LINHA;i++){
			se(matrizOrc[i][0]==tip.inteiro_para_cadeia(codProd, 10)){ //ENCONTRAR VALOR COD PROD NA MATRIZ ORCAMENTO
				valorEncontradoOrc = verdadeiro
				menuProd(matrizBase)
				faca{
					escreva("\nInsira o Cod do produto: ")
					leia(codProdutoBase)
					escreva("\nInsira quantidade do produto: ")
					leia(quantidadeProd)
					para(inteiro j=0;j<TAM_LINHA;j++){
						se (matrizBase[j][0]==tip.inteiro_para_cadeia(codProdutoBase,10)){ //ENCONTRA O VALOR COD PROD NA MATRIZ BASE
							matrizOrc[i][0] = matrizBase[j][0]
							matrizOrc[i][1] = matrizBase[j][1]
							matrizOrc[i][2] = matrizBase[j][2]
							matrizOrc[i][3] = tip.inteiro_para_cadeia(quantidadeProd,10)
							valorEncontrado = verdadeiro
							pare
						}
					}
					se (nao valorEncontrado){
						escreva("\nCodigo de produto inválido!\n")
						utl.aguarde(1500)
					}
					senao{
						nParar=falso
					}
				
				}enquanto(nParar)
				
				pare
			}
			
		}
		se (nao valorEncontradoOrc){
			escreva("\nValor Não encontrado na lista de orcamento")
			utl.aguarde(1500)
		}
	}

	funcao inteiro achouCodnaORC(inteiro cod, cadeia matriz[][]){//10 - Responsável pelos testes: Alex
		//busca na matriz Orcamento o codigo do produto
		para(inteiro i=0;i<TAM_LINHA;i++){
			se (matriz[i][0]==tip.inteiro_para_cadeia(cod,10)){
				retorne i
			}
		}
		retorne -1
	}
		
	funcao logico escolhaAlteracao(){ 
		// Escolhe se vai alterar produto ou metodo de pagamento
		logico parar = falso
		inteiro opcao
		faca{
			leia(opcao)
			se (opcao == 1){
				retorne verdadeiro
			}
			senao se(opcao == 2){
				retorne falso
			}
			senao{
				escreva("Opção inválida!")
				utl.aguarde(1500)
			}
		}enquanto(nao parar)
		retorne falso //nunca vai vir pra ca mas tive que colocar por causa do portugol kkkk
	}
	
	funcao calcularDados(real desconto,cadeia matrizOrc[][], cadeia &matrizCalOrc[][]){//11 - Responsável pelos testes: Nathan
		real valorItem, quantidade, valorBruto, valorAdicao,valorLiquido
		
		para(inteiro i=0;i<TAM_LINHA;i++){
			se(matrizOrc[i][0]!=" "){
				matrizCalOrc[i][0] = matrizOrc[i][0]
				//achar o valor total bruto do item.
				valorItem = tip.cadeia_para_real(matrizOrc[i][2])
				quantidade = tip.cadeia_para_real(matrizOrc[i][3])
				valorBruto = valorItem*quantidade  // valorBruto = tip.cadeia_para_real(matrizOrc[i][2])*tip.cadeia_para_real(matrizOrc[i][3])
				valorBruto = mat.arredondar(valorBruto, 2)
				matrizCalOrc[i][1] = tip.real_para_cadeia(valorBruto)
				//achar o valor de adição funciona tanto para acrescimo quando para o decrescimo do valor do item
				valorAdicao=valorBruto*desconto
				valorAdicao = mat.arredondar(valorAdicao, 2)
				matrizCalOrc[i][2] = tip.real_para_cadeia(valorAdicao)
				//achar o valor liquido
				valorLiquido=valorBruto+valorAdicao
				valorLiquido = mat.arredondar(valorLiquido, 2)
				matrizCalOrc[i][3] = tip.real_para_cadeia(valorLiquido)
			}
		}
	}

	funcao real calculaTotalCOL(inteiro coluna, cadeia matrizCalOrc[][]){//12 - Responsável pelos testes: Andre
		real valorTotal = 0.0
		caracter letra
		cadeia palavra
		para(inteiro i=0;i<TAM_LINHA;i++){
			letra = txt.obter_caracter(matrizCalOrc[i][coluna],0)
			palavra = tip.caracter_para_cadeia(letra)
			se(palavra !=" "){
				valorTotal += tip.cadeia_para_real(matrizCalOrc[i][coluna])
			}
		}
		retorne valorTotal
	}

	funcao logico verificarNomeValido(cadeia nome) {
		const inteiro TAM = 35		    
		caracter vetorAlgarismo[TAM] = {'0','1','2','3','4','5','6','7','8','9','!','@','#','$','%','&','*','(',')','+','=','{','[',']','}','?','/',':',';','>','<',',','.','|','-'}    
		caracter carNome
		inteiro numerocaracter,valorIncorreto = 0

		numerocaracter = txt.numero_caracteres(nome)
		
		para (inteiro i = 0; i < numerocaracter; i++) {
			carNome = txt.obter_caracter(nome, i)

			para (inteiro j = 0; j < TAM ; j++) {
				se (carNome == vetorAlgarismo[j]) {
					valorIncorreto++ 
				}
			}			
		}
		
		se (valorIncorreto > 0) {
			escreva("\nO nome digitado não pode possuir caracteres especiais",
				   "\nEx: !,@,&...")
			retorne verdadeiro
		} senao {
			retorne falso
			
		}
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7646; 
 * @DOBRAMENTO-CODIGO = [169, 186, 202, 292, 334, 367, 391, 415, 424, 434, 443, 459, 518, 538, 586, 596, 616, 640, 654];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {i, 107, 16, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */