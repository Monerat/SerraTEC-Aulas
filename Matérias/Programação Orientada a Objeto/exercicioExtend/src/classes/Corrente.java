package classes;

import java.util.Scanner;

public class Corrente extends Conta{
	protected double tarifa;
	protected double limite;
	
	public double getTarifa() {
		return tarifa;
	}
	public void setTarifa(double tarifa) {
		this.tarifa = tarifa;
	}
	public double getLimite() {
		return limite;
	}
	public void setLimite(double limite) {
		this.limite = limite;
	}
	
	public Corrente() {
		@SuppressWarnings("resource")
		Scanner input = new Scanner(System.in);
		System.out.println("Insira a tarifa:");
		tarifa(input.nextDouble());
		System.out.println("Insira o limite:");
		limite(input.nextDouble());
	}
	
	
	public void printInfo() {
		super.printInfo();
		System.out.println("Conta Corrente");
		System.out.println("Tarifa da conta: " + this.tarifa);
		System.out.println("Limite da conta: " + this.limite);
		System.out.println("\n");
	}
	
	boolean aplicarTarifa() {
		if(this.tarifa<this.saldo) {
			this.saldo = this.saldo - this.tarifa;
			return false;
		}
		else {
			System.err.println("Saldo insuficiente!"
					+ "Cliente entrará em Check Especial");
			return true;
		}
	}
	
	boolean tarifa(double valor) {
		if(valor>0) {
			this.tarifa = valor;
			return true;
		}else {
			return false;
		}
	}
	boolean limite(double valor) {
		if(valor>0) {
			this.limite = valor;
			return true;
		}else {
			return false;
		}
	}
}
