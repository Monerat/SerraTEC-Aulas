programa
{
	
	funcao inicio(){
	
		real nota1, nota2, nota3, nota4, media
		
		nota1 = 5.6
		nota2 = 7.6
		nota3 = 5.2
		nota4 = 9.3
	
		media = (nota1+nota2+nota3+nota4)/4

		se (media<5.0){
			escreva("Aluno Reprovado, média: ", media)
		}
		senao se(media>=6.0){
			escreva("Aluno Aprovado, média: ", media)
		}
		senao{
			escreva("Aluno de Recuperação, média: ", media)
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 179; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {media, 6, 35, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */