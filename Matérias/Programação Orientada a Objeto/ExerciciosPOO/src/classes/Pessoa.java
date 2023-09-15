package classes;

import java.util.Scanner;

public class Pessoa {
	
	private String cpf;
	private String nome;
	private Telefone telCelular;
	private Telefone telResidencial;
	private Telefone telTrabalho;
	private Endereco endResidencial;
	private Endereco endEntrega;
	private Endereco endCobranca;
	
	public String getNome() {
		return nome;
	}

	public Telefone getTelCelular() {
		return telCelular;
	}

	public Telefone getTelResidencial() {
		return telResidencial;
	}

	public Telefone getTelTrabalho() {
		return telTrabalho;
	}

	public Endereco getEndResidencial() {
		return endResidencial;
	}

	public Endereco getEndEntrega() {
		return endEntrega;
	}

	public Endereco getEndCobranca() {
		return endCobranca;
	}

	public Pessoa(){
		@SuppressWarnings("resource")
		Scanner input = new Scanner(System.in);
		
		System.out.println("Insira o CPF (Somente os Digitos Ex: 11111111111): ");
		cpf(input.nextLine());
		System.out.println("Insira o Nome Completo da pessoa: ");
		nome(input.nextLine());
		
		System.out.println("Insira o Telefone Celular: ");
		this.telCelular = new Telefone("CELULAR");
		System.out.println("Insira o Telefone Residencial: ");
		this.telResidencial = new Telefone("RESIDENCIAL");
		System.out.println("Insira o Telefone de Trabalho: ");
		this.telTrabalho = new Telefone("TRABALHO");
		System.out.println("Insira o Endereço de Cobrança: ");
		this.endResidencial = new Endereco("COBRANCA");
		System.out.println("Insira o Endereço de Entrega: ");
		this.endEntrega = new Endereco("ENTREGA");
		System.out.println("Insira o Endereço de Residencia: ");
		this.endCobranca = new Endereco("RESIDENCIAL");
	}
	
	public Pessoa(String cpf, String nome) {
		nome(nome);
		cpf(cpf);
	}
	
	public Pessoa(String cpf, String nome, String tipo,String ddd,String telCelular) {
		this(cpf, nome);
		Telefone tel = new Telefone(tipo,ddd, telCelular);
		
		if(tel.getTipo()=="CELULAR") {
			this.telCelular = tel;
		}
		else if(tel.getTipo()=="TRABALHO"){
			this.telTrabalho = tel;
		}
		else if(tel.getTipo()=="RESIDENCIAL"){
			this.telResidencial = tel;
		}
		else{
			System.err.println("Tipo de telefone inválido."
					+ "\nO tipo deve ser CELULAR, TRABALHO ou RESIDENCIAL");
		}
	}
	
	public Pessoa(String cpf, String nome, String tipo,
			String ddd,String telCelular,String cep,
			int numero, String logradouro, String bairro, String cidade, String tipoEnd) {
		
		this(cpf, nome,tipo,ddd,telCelular);
		Endereco end = new Endereco(cep, numero, logradouro, bairro, cidade, tipoEnd);
		
		if(end.getTipo()=="ENTREGA") {
			this.endResidencial = end;
		}
		else if(end.getTipo()=="COBRANCA"){
			this.endEntrega = end;
		}
		else if(end.getTipo()=="RESIDENCIAL"){
			this.endCobranca = end;
		}
		else{
			System.err.println("Tipo de endereço inválido."
					+ "\nO tipo deve ser ENTREGA, COBRANCA ou RESIDENCIAL");
		}
		
	}
	
	public Pessoa(String cpf, String nome, String dddCel,String telCelular,
			String dddRes, String telResidencial, String dddTra, String telTrabalho) {
		this(cpf, nome);
		Telefone telCel = new Telefone("CELULAR",dddCel, telCelular);
		Telefone telRes = new Telefone("RESIDENCIAL",dddRes, telResidencial);
		Telefone telTra = new Telefone("TRABALHO",dddTra, telTrabalho);
		this.telCelular = telCel;
		this.telResidencial = telRes;
		this.telTrabalho = telTra;
	}
	
	public Pessoa(String cpf, String nome, String dddCel,String telCelular,
			String dddRes, String telResidencial, String dddTra, String telTrabalho,
			String cepRes,int numeroRes, String logradouroRes, String bairroRes, String cidadeRes,
			String cepEntr,int numeroEntr, String logradouroEntr, String bairroEntr, String cidadeEntr,
			String cepCob,int numeroCob, String logradouroCob, String bairroCob, String cidadeCob) {
		
		this(cpf, nome,dddCel,telCelular,dddRes,telResidencial,dddTra,telTrabalho);
		Endereco endRes = new Endereco(cepRes,numeroRes,logradouroRes,bairroRes,cidadeRes,"RESIDENCIAL");
		Endereco endEntr = new Endereco(cepEntr,numeroEntr,logradouroEntr,bairroEntr,cidadeEntr,"ENTREGA");
		Endereco endCob = new Endereco(cepCob,numeroCob,logradouroCob,bairroCob,cidadeCob,"COBRANCA");
		this.endResidencial = endRes;
		this.endEntrega = endEntr;
		this.endCobranca = endCob;
	}
	
	boolean nome(String nome) {
		if(!nome.isBlank()) {
			this.nome = nome;
			return true;
		}
		else {
			System.err.println("Nome inválido."
					+ "\nNão pode ser inserido um nome em branco");
			return false;
		}
	}
	
	boolean cpf(String cpf) {
		if(cpf.length()==11) {
			this.cpf = cpf;
			return true;
		}
		else {
			System.err.println("Tamanho de CPF inválido."
					+ "\nO formato inserido deve ser somente 11 digitos."
					+ "\nPor exemplo o CPF 123.456.789-10 deve ser inserido no seguinte formato: '12345678910'");
			return false;
		}
	}
	void printInfo(){
		System.out.println("CPF: " + this.cpf);
		System.out.println("Nome: " + this.nome);
		System.out.println("Telefone Celular: " + this.telCelular.getDdd() + this.telCelular.getNumero());
		System.out.println("Telefone Residencial: " + this.telResidencial.getDdd() + this.telResidencial.getNumero());
		System.out.println("Telefone Trabalho: " + this.telTrabalho.getDdd() + this.telTrabalho.getNumero());
		System.out.println("Endereço Residencial: " + this.endResidencial.getLogradouro()+", "+this.endResidencial.getNumero()
							+", "+this.endResidencial.getBairro()+", "+this.endResidencial.getCidade()+", "+this.endResidencial.getCep());
		System.out.println("Endereço Entrega: " + this.endEntrega.getLogradouro()+", "+this.endEntrega.getNumero()
							+", "+this.endEntrega.getBairro()+", "+this.endEntrega.getCidade()+", "+this.endEntrega.getCep());
		System.out.println("Endereço Cobrança: "+ this.endCobranca.getLogradouro()+", "+this.endCobranca.getNumero()
							+", "+this.endCobranca.getBairro()+", "+this.endCobranca.getCidade()+", "+this.endCobranca.getCep());
		System.out.println("\n");
	}
}