	funcao imprimirOrcamento(cadeia matrizOrc[][], cadeia &matrizCalOrc[][]){
		//escreva("\nCOD PRODUTO       \tNOME PRODUTO      \tVALOR UNITARIO    \tQUANTIDADE ESTOQUE\n")
		
		para(inteiro j=0;j<TAM_COL_ORCAMENTO;j++){
			espacamentoPadrao(j,matrizOrc)
			espacamentoPadrao(j,matrizCalOrc)
		}
		para(inteiro i=0;i<TAM_LINHA;i++){
			para(inteiro j=0;j<TAM_COL_ORCAMENTO;j++){
				escreva(" | ",matrizOrc[i][j],"\t |")
			}
			para(inteiro k=1;k<TAM_COL_ORCAMENTO;k++){
				escreva(" | ",matrizCalOrc[i][k],"\t |")
			}
		escreva("\n")
		}
	}

	funcao imprimirProdOrc(cadeia matrizOrc[][]){
		escreva("\nCOD PRODUTO       \tNOME PRODUTO      \tVALOR UNITARIO    \tQUANTIDADE ESTOQUE\n")
		
		para(inteiro j=0;j<TAM_COL_ORCAMENTO;j++){
			espacamentoPadrao(j,matrizOrc)
		}
		para(inteiro i=0;i<TAM_LINHA;i++){
			para(inteiro j=0;j<TAM_COL_ORCAMENTO;j++){//orcemento
				escreva(" | ",matrizOrc[i][j],"\t |")
			}
		escreva("\n")
		}
	}
					//totalBrutoOrc = calculaTotalCOL(1,calculoOrcamento)
					//totalAdicaoOrc = calculaTotalCOL(2,calculoOrcamento)
					//totalLiquidoOrc = calculaTotalCOL(3,calculoOrcamento)
	funcao real calculaTotalCOL(inteiro coluna, cadeia matrizCalOrc[][]){
		real valorTotal = 0.0
		para(inteiro i=0;i<TAM_LINHA;i++){
			valorTotal += tip.cadeia_para_real(matrizCalOrc[i][coluna])
		}
		retorne valorTotal
		
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 944; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */