package classe;

import java.util.Scanner;

public class Gerente extends Funcionario {
	
	private int senha;
	private int numFuncionarios;
	private double bonus;
	
	public Gerente() {
		@SuppressWarnings("resource")
		Scanner input = new Scanner(System.in);
		System.out.println("Insira a Senha:");
		setSenha(input.nextInt());
		input.nextLine();
		System.out.println("Insira a Quantidade de funcionarios que ele é responsável:");
		setNumFuncionarios(input.nextInt());
		input.nextLine();
		System.out.println("Insira o bonus:");
		setBonus(input.nextDouble());
	}
	
	public Gerente(String nome, String cpf, double salario, int senha, int numFuncionarios, double bonus) {
		super(nome, cpf, salario);
		this.senha = senha;
		this.numFuncionarios = numFuncionarios;
		this.bonus = bonus;
	}


	public int getSenha() {
		return senha;
	}
	
	boolean setBonus(double valor) {
		if(valor>0) {
			this.bonus = valor;
			return true;
		}else {
			return false;
		}
	}

	public void setSenha(int senha) {
		this.senha = senha;
	}
	
	public double getBonus() {
        return bonus;
    }

	public int getNumFuncionarios() {
		return numFuncionarios;
	}


	public boolean setNumFuncionarios(int numFuncionarios) {
		if(numFuncionarios>0) {
			this.numFuncionarios = numFuncionarios;
			return true;
		}else {
			return false;
		}
	}


	public boolean autenticar(int senha) {
		if(this.senha == senha) {
			System.out.println("Acesso permitido");
			return true;
		}
		else {
			System.err.println("Acesso negado");
			return false;
		}
	}
	
	public double getBonificacao() {
        return getSalario() * 0.15;
    }
    public double calcularValorFinal() {
        return getSalario() + getBonificacao() + getBonus();
    }
    
}