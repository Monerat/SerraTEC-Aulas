/*
9) Faça um programa que peça o nome de 10 pessoas e a sua idade.
Armazene os nomes num vetor e a idade em outro vetor.
Crie um laço para fazer essas soliciações.
Crie um menu que permita ao usuário deicidir se quer incluir, alterar ou excluir os dados dos vetores.
Excluir significa limpar os dados (colocar vazio ou zero).
A edição somente será permitida se o nome não estiver vazio. Nesse caso, deverá efetuar a inclusão.
Crie um menu para organizar as funções.

Exemplo:

--------------------------------
      Cadastro de pessoas
--------------------------------
 1 - Incluir
 2 - Alterar
 3 - Excluir
 4 - Sair
--------------------------------
 */
programa{

	inclua biblioteca Util --> utl
	const inteiro TAM = 10
	
	funcao escreverMenu(inteiro pessoasBase,cadeia vetorNome[], inteiro vetorIdade[]){
		escreva("\n--------------------------------------------\n")
		escreva("\n\t\tBase atual")
		escreva("\n--------------------------------------------\n")
		
		para (inteiro i=0; i<utl.numero_elementos(vetorNome);i++){
			escreva(" | ",vetorNome[i])
		}
		escreva(" |")
		escreva("\n--------------------------------------------\n")
		para (inteiro i=0; i<utl.numero_elementos(vetorIdade);i++){
			escreva(" | ",vetorIdade[i])
		}
		escreva(" |\n")
		escreva("\n--------------------------------------------\n")
		escreva("\n--------------------------------------------\n")
		escreva("\n\tCadastro de pessoas")
		escreva("\n--------------------------------------------\n")
		escreva("\n1 - Incluir (",pessoasBase," de 10)")
		escreva("\n2 - Alterar")
		escreva("\n3 - Excluir")
		escreva("\n4 - Sair")
		escreva("\n--------------------------------------------\n")
		
	}	
	
	funcao logico checarDados(cadeia nome, inteiro idade){
		se (nome=="" ou idade<0){
			escreva("\nDado invalido: Nome em Branco ou Idade negativa")
			utl.aguarde(2000)
			retorne falso
		}
		senao {
			retorne verdadeiro
		}
	}
	
	funcao incluirPessoa(cadeia &vetorNome[], inteiro &vetorIdade[],inteiro contadorPessoas){
		cadeia nome
		inteiro idade
		logico naoAdicionou = verdadeiro
		escreva("\ninsira o nome da Pessoa a ser incluida na Base: ")
		leia(nome)
		escreva("\ninsira a idade da Pessoa a ser incluida na Base: ")
		leia(idade)
		se (checarDados(nome,idade)){
		 	para (inteiro i=0; i<utl.numero_elementos(vetorNome);i++){
		 		se (vetorNome[i]==" " e naoAdicionou){
		 			vetorNome[i]=nome
		 			vetorIdade[i]=idade
		 			contadorPessoas++
		 			naoAdicionou = falso
		 		}
		 	}
		 	se(naoAdicionou){
	 			escreva("\nDado inválido: A base está cheia! Pessoa não incluida na base")
	 			utl.aguarde(2000)
		 	}
		}
	}

	funcao alterarPessoa(cadeia &vetorNome[], inteiro &vetorIdade[]){
		cadeia nome
		inteiro idade, posicao
	
		escreva("\ninsira posicao (0 a 9) da Pessoa na base para ser alterada: ")
		leia(posicao)
		escreva("\ninsira o nome da Pessoa a ser alterada na Base: ")
		leia(nome)
		escreva("\ninsira a idade da Pessoa a ser alterada na Base: ")
		leia(idade)
		se (checarDados(nome,idade) e (posicao>=0 e posicao<TAM)){
			vetorNome[posicao]=nome
		 	vetorIdade[posicao]=idade
		}
	}
	
	funcao excluirVetores(cadeia &vetorNome[], inteiro &vetorIdade[]){
		para (inteiro i=0; i<utl.numero_elementos(vetorNome);i++){
			vetorNome[i] = " "
			vetorIdade[i] = -1
		}
	}
	
	funcao preencherVetorInteiro(inteiro &vetor[]) {
		para(inteiro i = 0; i < utl.numero_elementos(vetor); i++) {
			vetor[i] = -1
		}		
	}
	
	funcao preencherVetorCadeia(cadeia &vetor[]) {
		para(inteiro i = 0; i < utl.numero_elementos(vetor); i++) {
			vetor[i] = " "
		}		
	}
	
	funcao inicio(){
		cadeia vetorNome[TAM]
		inteiro vetorIdade[TAM],opcoes,contadorPessoas
		logico naoSair

		naoSair = verdadeiro
		contadorPessoas = 0
		preencherVetorCadeia(vetorNome)
		preencherVetorInteiro(vetorIdade)
		
		faca{
			limpa()
			escreverMenu(contadorPessoas,vetorNome,vetorIdade)
			leia(opcoes)
			escolha(opcoes){
				caso 1:
					incluirPessoa(vetorNome,vetorIdade,contadorPessoas)
				pare
				caso 2:
					alterarPessoa(vetorNome,vetorIdade)
				pare
				caso 3:
					excluirVetores(vetorNome,vetorIdade)
					contadorPessoas=0
				pare
				caso 4:
					naoSair = falso
				pare
				caso contrario:
					escreva("Dado inválido: Escolha uma das opções do menu")
					utl.aguarde(2000)
			}
		}enquanto(naoSair)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3407; 
 * @DOBRAMENTO-CODIGO = [25, 51, 62, 86, 102, 115];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */