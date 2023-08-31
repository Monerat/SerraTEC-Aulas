package classes;

import java.util.Scanner;

public class Poupanca extends Conta{
	protected double rendimento;

	public double getRendimento() {
		return rendimento;
	}
	
	public Poupanca() {
		@SuppressWarnings("resource")
		Scanner input = new Scanner(System.in);
		System.out.println("Insira a porcentagem de rendimento:");
		rendimento(input.nextDouble());
	}
	
	public void printInfo() {
		super.printInfo();
		System.out.println("Conta Poupança");
		System.out.println("Rendimento da conta: " + this.rendimento);
		System.out.println("\n");
	}
	
	boolean aplicarRendimento() {
		if(this.saldo>0) {
			this.saldo = this.saldo*(1+(this.rendimento/100));
			return true;
		}
		else {
			System.err.println("Cliente sem saldo" );
			return false;
		}
	}
	
	boolean rendimento(double valor) {
		if(valor>0) {
			this.rendimento = valor;
			return true;
		}else {
			return false;
		}
	}
}
