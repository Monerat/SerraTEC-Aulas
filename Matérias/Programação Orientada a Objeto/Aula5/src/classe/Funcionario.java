package classe;

import java.util.Scanner;

public class Funcionario {
	
	private String nome;
	private String cpf;
	private double salario;
	private double bonus;
	private static int totalFuncionario = 0;
	
	public Funcionario() {
		@SuppressWarnings("resource")
		Scanner input = new Scanner(System.in);
		
		System.out.println("Insira o Nome Completo do Funcionario:");
		setNome(input.nextLine());
		System.out.println("Insira o CPF (somente numeros):");
		setCpf(input.nextLine());
		
		System.out.println("Insira valor do Deposito: ");
		setSalario(input.nextDouble());
		
		Funcionario.totalFuncionario = getTotalFuncionario()+1;
	}
	
	public Funcionario(String nome, String cpf, double salario) {
		this.nome = nome;
		this.cpf = cpf;
		this.salario = salario;
	}

	public Funcionario(String nome, String cpf, double salario, double bonus) {
		this.nome = nome;
		this.cpf = cpf;
		this.salario = salario;
		this.bonus = bonus;
	}
	
	public static int getTotalFuncionario() {
		return totalFuncionario;
	}
	
	public String getNome() {
		return nome;
	}
	
	public String getCpf() {
		return cpf;
	}
	
	public double getSalario() {
		return salario;
	}
	
	boolean setNome(String nome) {
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
	
	boolean setCpf(String cpf) {
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
	
	
	public boolean setSalario(Double salario) {
		if(salario>0) {
			this.salario = salario;
			return true;
		}
		else {
			System.err.println("Salario inválido."
					+ "\nNão pode ser inserido um valor menor ou igual a 0");
			return false;
		}
		
	}
	
	public double getBonus() {
        return bonus;
    }
	
    public double getBonificacao() {
        return getSalario() * 0.10;
    }
    public double calcularValorFinal() {
        return getSalario() + getBonificacao(); 
    }
	
}
