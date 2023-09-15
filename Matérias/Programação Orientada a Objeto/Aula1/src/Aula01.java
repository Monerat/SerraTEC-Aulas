import java.util.Scanner;

public class Aula01 {
	public static Scanner input = new Scanner(System.in);
	
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		
		String nome = " Gustavo";
		int idade;
		double numero;
		boolean opcao;
		char caracter;
		
		int contador;
		
		contador = 1;
		
		//Atalho para criar o syso ctrl+espaço
		System.out.println("Olá, mundo!");
		System.out.println("Bem vindo," + nome);
		
		System.out.println("Informe a sua idade: ");
		idade = input.nextInt();
		input.nextLine();
		
		System.out.println("informe o seu sobrenome: ");
		nome = nome + ' ' + input.nextLine();
		
		System.out.println("Seu nome completo é: " + nome);
		System.out.println("A sua idade daqui a 10 anos será " + (idade + 10));
		
		if (idade > 45) {
			System.out.println("Tá ficando velho. Vai cuidar da pressão!");
		}else if (idade>30){
			System.out.println("Tem tempo ainda.");
		}
		else {
			System.out.println("Na flor da idade.");
		}
		while (contador<=10) {
			System.out.println("7x"+contador + " = "+ (contador*7));
			contador++;
		}
		
		//do {
			
		//}while ();
		
		for (int i = 0; i < 10; i++) {
			System.out.println("5x"+i+ " = "+ (i*5));
		}
	}
	public static void minhaFuncao() {
		System.out.println("Test");
	}
}