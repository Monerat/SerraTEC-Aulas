package classes;

public class Empregado {
	private String nome;
	private double salario;
	
	public Empregado(String nome, double salario) {
		setNome(nome);
		setSalario(salario);
	}

	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public double getSalario() {
		return salario;
	}
	
	public void setSalario(double salario) {
		this.salario = salario;
	}
	
	public double getGastos() {
		return getSalario();
	}
	
	public void getInfo() {
		System.out.printf("\nO nome do empregado é: ",getNome());
		System.out.printf("\nO salário do empregado é: ",getSalario());
		System.out.printf("O total de gasto da empresa com o empregado é: ",getGastos());
	}
}
