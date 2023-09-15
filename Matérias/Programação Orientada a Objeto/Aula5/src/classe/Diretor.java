package classe;

import java.util.Scanner;

public class Diretor extends Funcionario{
	
	private double dividendos;
	private double bonus;
	
	public Diretor() {
		@SuppressWarnings("resource")
		Scanner input = new Scanner(System.in);
		System.out.println("Insira o dividendo:");
		setDividendos(input.nextDouble());
		System.out.println("Insira o bonus:");
		setBonus(input.nextDouble());
	}
	
	public Diretor(String nome, String cpf, double salario, double dividendos, double bonus) {
		super(nome, cpf, salario);
		this.dividendos = dividendos;
		this.bonus = bonus;
	}

	public double getDividendos() {
		return dividendos;
	}

	public double getBonus() {
        return bonus;
    }
	
	boolean setDividendos(double valor) {
		if(valor>0) {
			this.dividendos = valor;
			return true;
		}else {
			return false;
		}
	}
	
	boolean setBonus(double valor) {
		if(valor>0) {
			this.bonus = valor;
			return true;
		}else {
			return false;
		}
	}
	
	public double getBonificacao() {
        return getSalario() * 0.20;
    }
	
    public double calcularValorFinal() {
        return getSalario() + getBonificacao() + getBonus();
    }
    
}
