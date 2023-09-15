package classes;

import java.util.Scanner;

public class Telefone {
	private String tipo;
	private String ddd;
	private String numero;
	
	public String getTipo() {
		return tipo;
	}

	public String getDdd() {
		return ddd;
	}

	public String getNumero() {
		return numero;
	}
	
	public Telefone(String tipo) {
		@SuppressWarnings("resource")
		Scanner input = new Scanner(System.in);
		
		System.out.println("Insira o DDD do Telefone(Somente os Digitos Ex: 11): ");
		ddd(input.nextLine());
		System.out.println("Insira o Numero do Telefone[Somente os Digitos (8 digitos para Fixo e 9 digitos para Celular) Ex: 11114444 ]: ");
		numero(input.nextLine());

		tipo(tipo);
	}
	
	public Telefone(String tipo,String ddd,String numero) {
		tipo(tipo);
		ddd(ddd);
		numero(numero);
	}
	
	boolean tipo(String tipo) {
		if((tipo.trim().toUpperCase() != "CELULAR")||
			(tipo.trim().toUpperCase() !="FIXO")||
			(tipo.trim().toUpperCase() !="TRABALHO")||
			(tipo.trim().toUpperCase() !="RESIDENCIAL")||
			(tipo.trim().toUpperCase() !="ETC")){
			this.tipo = tipo.trim().toUpperCase();
			return true;	
		}
		else {
			return false;
		}
	}
	
	boolean ddd(String ddd) {
		if(ddd.length()==2) {
			this.ddd = ddd;
			return true;
		}
		else {
			System.err.println("Tamanho de ddd inválido."
					+ "\nO formato inserido deve ser somente 2 digitos."
					+ "\nPor exemplo o DDD (21) deve ser inserido no seguinte formato: '21'");
			return false;
		}
	}
	
	boolean numero(String numero) {
		if((numero.length() == 8) && !(this.tipo == "CELULAR")) {
			this.numero = numero;
			return true;
		}
		else if((numero.length() == 9) && !(this.tipo == "FIXO")) {
			this.numero = numero;
			return true;
		}
		else {
			System.err.println("Tamanho do numero inválido."
					+ "\nO formato inserido deve ser somente os digitos do telefone fixo(8) e movél(9)."
					+ "\nPor exemplo o numero móvel 99999-9999 deve ser inserido no seguinte formato: '999999999'"
					+ "\\nJá o numero fixo 9999-9999 deve ser inserido no seguinte formato: '99999999'");
			return false;
		}
	}
}