programa
{
	inclua biblioteca Util  --> u
	
	funcao inicio()
	{
		inteiro meuVetor[10]
		preencherVetor(meuVetor)
		escreverVetor(meuVetor)
		
	}

	funcao preencherVetor(inteiro &vetor[]) {
		para(inteiro i = 0; i < u.numero_elementos(vetor); i++) {
			vetor[i] = i+1
		}		
	}

	funcao escreverVetor(inteiro vetor[]) {
		para(inteiro i = 0; i < u.numero_elementos(vetor); i++) {
			escreva(vetor[i], "\t")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 414; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */