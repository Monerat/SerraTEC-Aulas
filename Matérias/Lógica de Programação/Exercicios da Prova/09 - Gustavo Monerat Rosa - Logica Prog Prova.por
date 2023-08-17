/*
9) No portugol, crie um programa com dois vetores.
O vetor 01 com tamanho 10, onde possui o seguinte conteúdo:


O vetor 02 com tamanho 20, sem conteúdo, mas de mesmo tipo.

Em um laço, transfira o conteúdo do vetor que possui os números para o outro vetor que ainda não foi inicializado.

Em seguida, crie uma função que receba um vetor como parâmetro e que seja capaz de escrever no console o conteúdo de qualquer vetor.
Execute a função de modo que o conteúdo dos dois vetores sejam apresentados em tela, mas somente os números maiores que zero.
 */
programa{
	inclua biblioteca Util --> utl
	const inteiro TAM_V1 = 10
	const inteiro TAM_V2 = 20
	
	funcao inicio(){
		inteiro vetor1[TAM_V1] = {50, 20, 90, 80, 60, 10, 70, 40, 30, 01}
		inteiro vetor2[TAM_V2]
		
		para(inteiro i=0;i<TAM_V1;i++){
			vetor2[i]=vetor1[i]
		}
		imprimirVetor(vetor1)
		escreva("\n----------------------------------------------------------------------------------\n")
		imprimirVetor(vetor2)
	}
	
	funcao imprimirVetor(inteiro vetor[]){
		escreva("\n")
		para (inteiro i=0; i<utl.numero_elementos(vetor);i++){
			se (vetor[i]>0){
				escreva(vetor[i],"\t")
			}
		}
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 983; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */