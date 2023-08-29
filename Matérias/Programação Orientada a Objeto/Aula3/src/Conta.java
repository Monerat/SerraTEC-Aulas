
public class Conta {
	//o que uma conta tem
	private int numero;
	private String titular;
	private double saldo;
	
	public Conta(int numero, String titular, double saldo) {
		this.numero = numero;
		this.titular = titular;
		depositar(saldo);
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
	
	boolean transferir(Conta destino, double valor) {
		if (sacar(valor)) {
			destino.depositar(valor);
			return true;
		}else {
			return false;
			
		}
	}
	
}
