package conversaoExerciciosPortugol;

import java.util.Scanner;
import java.util.ArrayList;

public class exercicios {
	
	public static void main(String[] args) {
		//exercicio1();
		//exercicio2(1000);
		//exercicio3();
		//exercicio4();
		//exercicio5();
		//exercicio6();
		//exercicio7();
		//exercicio8();
		//exercicio9();
		//exercicio10();
		//exercicio11();
		//exercicio12();
		//exercicio13();
		//exercicio14();
		//exercicio15();
	}
	
	public static Scanner input = new Scanner(System.in);
	
	public static void exercicio1() {
		int idadePessoa, primeiraFaixa, segundaFaixa, terceiraFaixa, quartaFaixa, quintaFaixa;
		
		primeiraFaixa = 0;
		segundaFaixa = 0;
		terceiraFaixa = 0;
		quartaFaixa = 0;
		quintaFaixa = 0;
		
		for(int i=0;i<15;i++){
			
			System.out.print("\ninsira a idade da pessoa "+(i+1)+"\n");
			idadePessoa = input.nextInt();
			if (idadePessoa<0){
				System.out.print("\nidade Invalida, não existe idade negativa, número ignorado para conferência");
			}
			else if (idadePessoa<16){
				primeiraFaixa++;
			}
			else if (idadePessoa<31){
				segundaFaixa++;
			}
			else if (idadePessoa<46){
				terceiraFaixa++;
			}
			else if (idadePessoa<61){
				quartaFaixa++;
			}
			else{
				quintaFaixa++;
			}	
		}
		
		System.out.print("\nA quantidade de pessoas na faixa etária Até 15 anos é: "+primeiraFaixa);
		System.out.print("\nA quantidade de pessoas na faixa etária De 16 a 30 anos é: "+segundaFaixa);
		System.out.print("\nA quantidade de pessoas na faixa etária De 31 a 45 anos é: "+terceiraFaixa);
		System.out.print("\nA quantidade de pessoas na faixa De 46 a 60 anos é: "+quartaFaixa);
		System.out.print("\nA quantidade de pessoas na faixa Acima de 61 anos é: "+quintaFaixa);
		
		double somaIdade = primeiraFaixa +segundaFaixa +terceiraFaixa +quartaFaixa +quartaFaixa+quintaFaixa;
		
		System.out.printf("\nA percentagem de pessoas na primeira faixa etária, com relação ao total de pessoas: %.2f %%", (((double)primeiraFaixa*100)/somaIdade));
		System.out.printf("\nA percentagem de pessoas na última faixa etária, com relação ao total de pessoas: %.2f %%", (((double)quintaFaixa*100)/somaIdade));
	}

	public static int exercicio2(int num) {
		if (num>2000 || num<1000){
			return 0;
		}
		else{
			System.out.print("\n" + num);
			if(num%11 ==2){
				System.out.print("  (quando dividido por 11 o resto é igual a 2)");
			}
			return exercicio2(num+1);
		}
	}
	
	public static void exercicio3() {
		double[] numeros = new double[3];
		
		System.out.print("\nInsira o valor de A: ");
		numeros[0] = input.nextDouble();
		
		System.out.print("\nInsira o valor de B: ");
		numeros[1] = input.nextDouble();
		
		System.out.print("\nInsira o valor de C: ");
		numeros[2] = input.nextDouble();
		
		System.out.println("A Ordem lida foi a seguinte: ");
		for (int i=0;i<numeros.length;i++) {
			System.out.printf("  %.2f  ",numeros[i]);
		}
		
		bubbleSort(numeros);
		
		System.out.println("\nA Ordem crescente foi a seguinte:");
		for (int i=0;i<numeros.length;i++) {
			System.out.printf("  %.2f  ",numeros[i]);
		}
		
		System.out.println("\nA Ordem decrecente foi a seguinte: ");
		for (int i=numeros.length;i>0;i--) {
			System.out.printf("  %.2f  ",numeros[i-1]);
		}
		
	}
	
	public static void bubbleSort(double[] numeros){
		
		boolean troca;
		double copia = 0.0;
		
		do{ 
			troca = false;
			for(int i=0;i<numeros.length-1;i++){
				if (numeros[i] > numeros[i+1]){
					copia = numeros[i];
					numeros[i] = numeros[i+1];
					numeros[i+1] = copia;
					troca = true;
				}
			}
		}while(troca);
	}

	public static void exercicio4() {
		ArrayList<Double> totalCompras = new ArrayList<>();
		ArrayList<Integer> percentDisc = new ArrayList<>();
		ArrayList<Double> valLiquido = new ArrayList<>();
		
		int desconto = 0;
		for(int i=0;i<5;i++) {
			System.out.println("Insira o valor da compra do cliente: R$");
			totalCompras.add(input.nextDouble());
		}
		
		for(Double compra : totalCompras) {
			if(compra>=500.0) {
				if(compra<2900.0) {
					desconto = (int)(compra/100)-4;
					percentDisc.add(desconto);
					compra = compra -(compra*((double)desconto/100));
					valLiquido.add(compra);
				}
				else {
					desconto = 25;
					percentDisc.add(desconto);
					compra = compra - (compra * 0.25);
					valLiquido.add(compra);
				}
			}
			else {
				percentDisc.add(0);
				valLiquido.add(compra);
			}
		}
		for(int i=0;i< totalCompras.size();i++) {
			System.out.printf("\n Valor da Compra:R$ %.2f \tPorcentagem de desconto : %d %% \t\tValor Final (Aplicando o Desconto):R$ %.2f",totalCompras.get(i),percentDisc.get(i),valLiquido.get(i));
		}
	}

	public static void exercicio5() {
		int tamanhoQuadrado;
		String[] numeros = new String[20];
		
		do{
			System.out.print("\nTamanho do lado do Quadrado entre 1 e 20: ");
			tamanhoQuadrado = input.nextInt();
			
		}while(!(tamanhoQuadrado>0 && tamanhoQuadrado<20));
		
		for(int i=0; i<tamanhoQuadrado; i++){
			for(int j=0; j<tamanhoQuadrado; j++){
				if (j==0){
					numeros[i]="* ";
				}
				else{
					numeros[i]+="* ";
				}
			}
			System.out.print("\n"+numeros[i]);
		}
	}
	
	public static void exercicio6() {
		int tamanhoQuadrado;
		String[] numeros = new String[20];
		
		do{
			System.out.print("\nTamanho do lado do Quadrado entre 1 e 20: ");
			tamanhoQuadrado = input.nextInt();
			
		}while(!(tamanhoQuadrado>0 && tamanhoQuadrado<20));
		
		for(int i=0; i<tamanhoQuadrado; i++){
			if(i==0||i==tamanhoQuadrado-1){
				for(int j=0; j<tamanhoQuadrado; j++){
					if (j==0){
						numeros[i]="* ";
					}
					else{
						numeros[i]+="* ";
					}
				}
			}
			else {
				for(int j=0; j<tamanhoQuadrado; j++){
					if (j==0){
						numeros[i]="* ";
					}
					else if(j==tamanhoQuadrado-1){
						numeros[i]+="* ";
					}
					else {
						numeros[i]+="  ";
					}
				}
			}
			System.out.print("\n"+numeros[i]);
		}
	
	}

	public static void exercicio7() {
		int tamanhoQuadrado;
		String[] numeros = new String[20];
		
		do{
			System.out.print("\nTamanho do lado do Quadrado entre 1 e 20: ");
			tamanhoQuadrado = input.nextInt();
			
		}while(!(tamanhoQuadrado>0 && tamanhoQuadrado<20));
		
		for(int i=0; i<1; i++){
			for(int j=0; j<tamanhoQuadrado; j++){
				if (j==0){
					numeros[i]="* ";
				}
				else{
					numeros[i]+="* ";
				}
				System.out.print("\n"+numeros[i]);
			}
		}
	}

	public static void exercicio8() {
		int numInserido;

		do{
			System.out.print("\nTeste do numero primo! Insira o numero a ser testado: ");
			numInserido = input.nextInt();

		}while(numInserido<1);
		
		if(primo(numInserido,2)){
			System.out.println("O numero é primo");
		}
		else{
			System.out.println("O numero não é primo");
		}
	}
	
	public static boolean primo(int numero, int i){
		if(numero <= 2){ // caso inicial 1 e 2 
			return true;
		}
		else if(numero%i==0){//checa se resta algo na divisao
			return false;
		}
		else if(i*i>numero){ //vai até a raiz do numero
        		return true;
		}
		else{
			return primo(numero, i+1);
		}
	}
	
	public static void exercicio10() {
		int numMaxAtual, indiceMaxAtual, TAM=8;
		int[] numInseridos = new int[TAM]; 
		

		numMaxAtual=0;
		indiceMaxAtual=0;
				
		for(int i=0;i<TAM;i++){
			System.out.printf("\nInsira mais, %d numeros: ", TAM-i);
			numInseridos[i] = input.nextInt();
			if(i==0){
				numMaxAtual=numInseridos[0];
				indiceMaxAtual=0;
			}
			else if (numMaxAtual<numInseridos[i]){
				numMaxAtual=numInseridos[i];
				indiceMaxAtual=i;
			}
		}
		System.out.println("\n");
		for(int i=0;i<TAM;i++){
			System.out.printf("\t %d", i);
		}
		System.out.println("\n");
		for(int i=0;i<TAM;i++){
			System.out.printf("\t %d", numInseridos[i]);
		}
		System.out.printf("\n\nO maior valor do vetor informado é %d e ele se encontra no índice %d do vetor", numMaxAtual, indiceMaxAtual);
	}
	
	public static void exercicio11() {
		int  somaAtual, TAM=10;
		int[] numInseridos = new int[TAM]; 
		

		somaAtual=0;
				
		for(int i=0;i<TAM;i++){
			System.out.printf("\nInsira mais, %d numero(s): ", TAM-i);
			numInseridos[i] = input.nextInt();
			somaAtual+=numInseridos[i];
		}
		System.out.println("\n");
		for(int i=0;i<TAM;i++){
			System.out.printf("\t %d", i);
		}
		System.out.println("\n");
		for(int i=0;i<TAM;i++){
			System.out.printf("\t %d", numInseridos[i]);
		}
		System.out.printf("\n\nA soma de todos os valores do vetor é: %d", somaAtual);
	
	}
	
	public static void exercicio12() {
		int  numeroEntrada, TAM=10;
		int[] numInseridos = new int[TAM]; 
		ArrayList<Integer> numerosDiv = new ArrayList<>();

				
		for(int i=0;i<TAM;i++){
			System.out.printf("\nInsira mais, %d numero(s): ", TAM-i);
			numInseridos[i] = input.nextInt();
		}
		System.out.println("\n");
		for(int i=0;i<TAM;i++){
			System.out.printf("\t %d", i);
		}
		System.out.println("\n");
		for(int i=0;i<TAM;i++){
			System.out.printf("\t %d", numInseridos[i]);
		}
		System.out.printf("\nInforme um inteiro positivo para testar a divisibilidade do vetor: ");
		numeroEntrada = input.nextInt();
		
		if(numeroEntrada>=0) {
			for (int i=0;i<TAM;i++){
				if(numInseridos[i]%numeroEntrada==0){
					numerosDiv.add(numInseridos[i]);
				}
			}
		}else {
			System.out.printf("\n Valor inválido de divisão invalido");
		}
		System.out.printf("\nOs numeros que são divisíveis por são: \n");
		for(int i=0;i<numerosDiv.size();i++) {
			System.out.printf("\t %d ",numerosDiv.get(i));
		}
		
	}
	
	public static void exercicio13() {
		int aux, TAM=8;
		int[] numInseridos = new int[TAM]; 
		
				
		for(int i=0;i<TAM;i++){
			System.out.printf("\nInsira mais, %d numeros: ", TAM-i);
			numInseridos[i] = input.nextInt();
		}
		System.out.println("O vetor inserido é:");
		for(int i=0;i<TAM;i++){
			System.out.printf("\t %d", i);
		}
		System.out.println("\n");
		for(int i=0;i<TAM;i++){
			System.out.printf("\t %d", numInseridos[i]);
		}
		
		for(int i=0;i<TAM/2;i++){
			aux=numInseridos[i];
			numInseridos[i] = numInseridos[(TAM-1)-i];
			numInseridos[(TAM-1)-i]=aux;
		}
		System.out.println("\n\nO vetor invertido é:");
		for(int i=0;i<TAM;i++){
			System.out.printf("\t %d", i);
		}
		System.out.println("\n");
		for(int i=0;i<TAM;i++){
			System.out.printf("\t %d", numInseridos[i]);
		}
		
	}

	public static void exercicio14() {
		int somaImpar, multPar, TAM=10;
		int[] numInseridos = new int[TAM]; 
		
		somaImpar=0;
		multPar=1;
				
		for(int i=0;i<TAM;i++){
			System.out.printf("\nInsira mais, %d numeros: ", TAM-i);
			numInseridos[i] = input.nextInt();
			if(numInseridos[i]%2==0){
				multPar*=numInseridos[i];
			}
			else {
				somaImpar+=numInseridos[i];
			}
		}
		System.out.println("\n");
		for(int i=0;i<TAM;i++){
			System.out.printf("\t %d", i);
		}
		System.out.println("\n");
		for(int i=0;i<TAM;i++){
			System.out.printf("\t %d", numInseridos[i]);
		}
		System.out.printf("\n\nA soma de todos os valores impares do vetor é: %d",somaImpar);
		System.out.printf("\n\nA multiplicacao de todos os valores pares do vetor é: %d",multPar);
	}

	public static void exercicio15() {
		int TAM=5;
		double[] numInseridos = new double[TAM];
		double somaAtual;

		somaAtual= 0.0;
				
		for(int i=0;i<TAM;i++){
			System.out.printf("\nInsira mais, %d numero(s): ", TAM-i);
			numInseridos[i] = input.nextDouble();
			somaAtual+=numInseridos[i];
		}
		System.out.println("\n");
		for(int i=0;i<TAM;i++){
			System.out.printf("\t %d", i);
		}
		System.out.println("\n");
		for(int i=0;i<TAM;i++){
			System.out.printf("\t %.2f", numInseridos[i]);
		}
		System.out.printf("\n\nA soma de todos os valores do vetor é: %.2f", somaAtual);
	}

}