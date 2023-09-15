package classes;

import java.util.Scanner;

public class Endereco {
	private String cep;
	private int numero;
	private String logradouro;
	private String bairro;
	private String cidade;
	private String tipo;
	
	
	public String getCep() {
		return cep;
	}

	public int getNumero() {
		return numero;
	}

	public String getLogradouro() {
		return logradouro;
	}

	public String getBairro() {
		return bairro;
	}

	public String getCidade() {
		return cidade;
	}
	
	public String getTipo() {
		return tipo;
	}
	
	public Endereco(String tipo) {
		@SuppressWarnings("resource")
		Scanner input = new Scanner(System.in);

		System.out.println("Insira o CEP do endereço de Cobrança(Somente os Digitos Ex: 01001000): ");
		cep(input.nextLine());
		System.out.println("Insira o Logradouro do endereço (Somente o logradouro Ex:Rua Arnaldo Cezar Coelho): ");
		logradouro(input.nextLine());
		System.out.println("Insira o Numero do endereço(Somente o numero Ex: 123): ");
		numero(input.nextInt());
		input.nextLine();
		System.out.println("Insira o Bairro do endereço: ");
		bairro(input.nextLine());
		System.out.println("Insira a Cidade do endereço: ");
		cidade(input.nextLine());
		tipo(tipo);
	}

	public Endereco(String cep, int numero) {
		cep(cep);
		numero(numero);
	}
	
	public Endereco(String cep, int numero, String logradouro, String bairro, String cidade) {
		this(cep,numero);
		logradouro(logradouro);
		bairro(bairro);
		cidade(cidade);
	}
	
	public Endereco(String cep, int numero, String logradouro, String bairro, String cidade, String tipo) {
		this(cep,numero,logradouro,bairro,cidade);
		tipo(tipo);
	}
	
	
	boolean numero(int numero) {
		if(numero>0) {
			this.numero = numero;
			return true;
		}
		else {
			System.err.println("Valor do numero do endereço errado."
					+ "\nO formato inserido deve ser um numérico inteiro positivo.");
			return false;
		}
	}
	
	boolean cep(String cep) {
		if(cep.length()==8) {
			this.cep = cep;
			return true;
		}
		else {
			System.err.println("Tamanho de CEP inválido."
					+ "\nO formato inserido deve ser somente os caracteres numéricos."
					+ "\nPor exemplo o CEP 01001-000 deve ser inserido no seguinte formato: '01001000'");
			return false;
		}
	}
	
	boolean logradouro(String logradouro) {
		if(!logradouro.isBlank()) {
			this.logradouro = logradouro;
			return true;
		}
		else {
			System.err.println("Logradouro inválido."
					+ "\nNão pode ser inserido um logradouro em branco");
			return false;
		}
	}
	
	boolean bairro(String bairro) {
		if(!bairro.isBlank()) {
			this.bairro = bairro;
			return true;
		}
		else {
			System.err.println("Bairro inválido."
					+ "\nNão pode ser inserido um bairro em branco");
			return false;
		}
	}
	
	boolean cidade(String cidade) {
		if(!cidade.isBlank()) {
			this.cidade = cidade;
			return true;
		}
		else {
			System.err.println("Cidade inválido."
					+ "\nNão pode ser inserido um cidade em branco");
			return false;
		}
	}
	
	boolean tipo(String tipo) {
		if((tipo.trim().toUpperCase() != "COBRANCA")||
			(tipo.trim().toUpperCase() !="ENTREGA")||
			(tipo.trim().toUpperCase() !="RESIDENCIAL")||
			(tipo.trim().toUpperCase() !="ETC")){
			this.tipo = tipo.trim().toUpperCase();
			return true;	
		}
		else {
			return false;
		}
	}
	
}