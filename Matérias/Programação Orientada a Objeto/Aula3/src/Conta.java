import java.util.Scanner;

public class Conta {
	//o que uma conta tem
	private int numero;
	private String titular;
	private double saldo;
	private static int totalContas = 0;
	
	
	
	public Conta() {
		@SuppressWarnings("resource")
		Scanner input = new Scanner(System.in);
		System.out.println("Insira o numero da Conta: ");
		numero(input.nextInt());
		input.nextLine();
		System.out.println("Insira o Nome Completo do Titular:");
		titular(input.nextLine());
		System.out.println("Insira valor do Deposito: ");
		depositar(input.nextDouble());
		
		Conta.totalContas = getTotalContas()+1;
	}

	public Conta(int numero, String titular, double saldo) {
		numero(numero);
		titular(titular);
		depositar(saldo);
		Conta.totalContas = getTotalContas()+1;
	}
	
	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getTitular() {
		return titular;
	}
	public static int getTotalContas() {
		return totalContas;
	}

	public void setTitular(String titular) {
		this.titular = titular;
	}

	public void setSaldo(double saldo) {
		depositar(saldo);		
	}
	
	void printInfo() {
		System.out.println("Numero da conta: " + this.numero);
		System.out.println("Titular da conta: " + this.titular);
		System.out.println("Saldo da conta: " + this.saldo);
		System.out.println("\n");
	}
	
	
	boolean sacar(double valor) {
		if(this.saldo<valor) {
			return false;
		}else {
			this.saldo = this.saldo - valor;
			return true;
		}
	}
	
	boolean depositar(double valor) {
		if(valor>0) {
			this.saldo = this.saldo + valor;
			return true;
		}else {
			return false;
		}
		
	}
	
	boolean titular(String titular) {
		if(!titular.isBlank()) {
			this.titular = titular;
			return true;
		}
		else {
			System.err.println("Titular inválido."
					+ "\nNão pode ser inserido um Titular em branco");
			return false;
		}
	}
	
	boolean numero(int numero) {
		if(numero>0) {
			this.numero = numero;
			return true;
		}
		else {
			System.err.println("Numero inválido."
					+ "\nNão pode ser inserido um numero<=0 ");
			return false;
		}
	}
	
	boolean transferir(Conta destino, double valor) {
		if (sacar(valor)) {
			destino.depositar(valor);
			return true;
		}else {
			return false;
			
		}
	}
	
}