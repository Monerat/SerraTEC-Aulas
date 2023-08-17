programa{
    
    funcao inicio(){
    	
        escrevaNoConsoleSemParametetro()
        escrevaNoConsoleComParametro("Hello world com parametro.\n")
        escreva(escrevaNoConsoleComRetornoSemParametro()) // escrevaNoConsoleComRetornoSemParametro() -> "Hello world sem parametro.\n"
        escreva(escrevaNoConsoleComRetornoComParametro("Hello world com retorno e com parametro.\n"))
    }

    // função sem retorno, sem parametros
    funcao escrevaNoConsoleSemParametetro(){
        escreva("Hello world sem parametro.\n")
    }

    // função sem retorno, com parametros
    funcao escrevaNoConsoleComParametro(cadeia texto){
        escreva(texto)
    }

    // função com retorno, sem parametros
    funcao cadeia escrevaNoConsoleComRetornoSemParametro(){
        retorne "Hello world com retorno e sem parametro.\n"
    }

    // função com retorno e com parametro
    funcao cadeia escrevaNoConsoleComRetornoComParametro(cadeia texto){
        retorne texto
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 834; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */