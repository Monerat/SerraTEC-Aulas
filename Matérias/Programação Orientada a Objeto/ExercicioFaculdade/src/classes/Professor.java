package classes;

public class Professor extends Empregado{
	private int horasAula;
	
	public Professor(String nome, double salario, int horasAula) {
		super(nome, salario);
		setHorasAula(horasAula);
	}

	public double getHorasAula() {
		return horasAula;
	}

	public void setHorasAula(int horasAula) {
		this.horasAula = horasAula;
	}
	
	public double getBonus() {
		return getHorasAula()*10;
	}
	
	public double getGastos() {
		return getSalario()+getBonus();
	}
	
	public void getInfo() {
		super.getInfo();
		System.out.printf("O total de horas/aula é: ",getHorasAula());
	}
}