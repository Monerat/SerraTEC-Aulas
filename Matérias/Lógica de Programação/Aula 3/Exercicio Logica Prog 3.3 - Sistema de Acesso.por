//3) Faça um programa que leia um nome de usuário e a sua senha e não aceite se o usuário a a senha forem diferentes, mostrando uma mensagem de erro e voltando a pedir as informações.
programa{
	
	const cadeia USUARIO = "Supervisor"
	const cadeia SENHA = "123"
	
	funcao inicio(){
		
		cadeia usuario, senha
		inteiro contadorTentativas = 3
		logico acessoNegado = verdadeiro

		enquanto (acessoNegado e (contadorTentativas > 0) ){
			
			escreva("\nInforme o usuário: ")
			leia(usuario)
		
			escreva("\nInforme a senha: ")
			leia(senha)
			limpa()
			
			se ((usuario == USUARIO) e (senha == SENHA)){
				acessoNegado = falso
				escreva("\nBem vindo à plataforma!\n")
				pare
			}
			senao{
				escreva("\nUsuario ou Senha invalidos!\n")
			}
			contadorTentativas--
			escreva("\nVocê tem mais ",contadorTentativas," tentativas\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 471; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */