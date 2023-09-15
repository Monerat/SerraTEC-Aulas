package balancoTrimestral;

import java.util.Scanner;
import java.util.ArrayList;

public class Balanco {
	
	public static void main(String[] args) {
		//estudos
		//exercicio1();
		//exercicio2(1000);
		//exercicio3();
		//exercicio4();
		//exercicio5();
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
	
	public static void balanco() {
		int gastosJaneiro = 15000;
		int gastosFevereiro = 23000;
		int gastosMarco = 17000;
		
		int gastosTrimestre = gastosJaneiro + gastosFevereiro + gastosMarco;
		
		System.out.println("Os gastos do trimestre são " + gastosTrimestre);
	}
	
	private static void estudos() {
		double d = 3.14635;
		int i = (int) d;
		System.out.println(i);
		
		balanco();
		
		int var1, var2;
		
		var1 = 20;
		var2 = 40;
		
		int soma = var1 + var2;
		
		double div = (double)var1/(double)var2;
		
		System.out.println("A soma é: " + soma);
		System.out.println("A divisao é: " + div);
		
		char a = 'A';
		char b = 'B';
		int c = a + b;
		
		System.out.println("A soma dos char é: " + c);
	}
	
}