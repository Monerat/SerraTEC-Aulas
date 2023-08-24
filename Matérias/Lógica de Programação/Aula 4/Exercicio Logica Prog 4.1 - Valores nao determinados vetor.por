/*
 * 1) Desenvolver um algoritmo que leia um número não determinado de valores e calcule e escreva a média aritmética dos valores lidos,
 * a quantidade de valores positivos, a quantidade de valores negativos e o percentual de valores negativos e positivos.
 */
programa{
	
	funcao inicio(){
	
		real vetor[200],somaMedia			//Não encontrei um modo de implementa-lo dinamicamente, tamanho do vetor tem que ser pré definido. Acima de 200 numeros o programa não funciona
		inteiro nmTotal,nmPositivos,nmNegativos
		logico nParar
		caracter perguntaParar

		nmTotal = 0
		nmPositivos = 0
		nmNegativos = 0
		somaMedia = 0.0
		nParar = verdadeiro

		escreva("---=Algoritmo Retorna a média aritmética, a quantidade de valores positivos, a quantidade de valores negativos e o percentual em relação com o total=---")
		
		faca{
			escreva("\nInsira um Número: ")
			leia(vetor[nmTotal])
			nmTotal++
			escreva("\nDeseja parar? (S/N)")
			leia(perguntaParar)
			limpa()
			se(perguntaParar=='s' ou perguntaParar=='S'){
				nParar=falso
				limpa()
			}
		}enquanto(nParar)

		para (inteiro i=0;i<nmTotal;i++){
			escreva("\n",vetor[i])
			somaMedia=somaMedia+vetor[i]
			se(vetor[i]>=0){
				nmPositivos++
			}
			senao{
				nmNegativos++
			}
		}
		
		escreva("\n\nMédia aritmética = ", somaMedia/nmTotal)
		escreva("\nQuantidade de valores positivos = ", nmPositivos)
		escreva("\nPorcentagem em relação a quantidade total = ", (nmPositivos*100)/nmTotal," %")
		escreva("\nQuantidade de valores negativos = ", nmNegativos)
		escreva("\nPorcentagem em relação a quantidade total = ", (nmNegativos*100)/nmTotal," %")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 473; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */