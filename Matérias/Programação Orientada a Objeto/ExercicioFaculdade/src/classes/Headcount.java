package classes;

import java.util.ArrayList;

public class Headcount {
	private ArrayList<Empregado> empregados = new ArrayList<>();
	private ArrayList<Professor> professores = new ArrayList<>();
	
	public void adicionarEmpregado(Empregado empregado) {
		boolean existeEmpregado = false;
		
		for (Empregado empr: empregados) {
			if (empr.getNome() == empregado.getNome()) {
				existeEmpregado = true;
				System.err.println("Empregado já cadastrado");
				break;
			}
		}
		
		if (!existeEmpregado) {
			empregados.add(empregado);
		}
	}
	
	public void adicionarProfessor(Professor professor) {
		boolean existeProfessor = false;
		
		for (Professor prof: professores) {
			if (prof.getNome() == professor.getNome()) {
				existeProfessor = true;
				System.err.println("Professor já cadastrado");
				break;
			}
		}
		if (!existeProfessor) {
			professores.add(professor);
		}
	}
	
	public int totalEmpregados() {
		return empregados.size();
	}
	
	public int totalProfessores() {
		return empregados.size();
	}
	
	public int totalHC() {
		return totalEmpregados()+totalProfessores();
	}
	
	public double salEmpregados() {
		double sumSal=0;
		for(Empregado empregado:empregados) {
			sumSal += empregado.getSalario();
		}
		return sumSal;
	}
	
	public double salProfessores() {
		double sumSal=0;
		for(Professor professor:professores) {
			sumSal += professor.getSalario();
		}
		return sumSal;
	}
	
	public double totalSalario() {
		return salEmpregados()+salProfessores();
	}
	
	public double custoEmpregados() {
		double sumCusto=0;
		for(Empregado empregado:empregados) {
			sumCusto += empregado.getGastos();
		}
		return sumCusto;
	}
	
	public double custoProfessores() {
		double sumCusto=0;
		for(Professor professor:professores) {
			sumCusto += professor.getGastos();
		}
		return sumCusto;
	}
	
	public double totalCusto() {
		return custoEmpregados()+custoProfessores();
	}
	
	public void getHC() {
		System.out.println("\n"
				+"------------------------------------------\n"
				+"Total Headcount:"+totalHC()+"\n"
				+"Total Salario:"+totalSalario()+"\n"
				+"Total Custo:"+totalCusto()+"\n"
				);
	}
	
	public void listarEmpregados() {
		System.out.println("\n"
				+"------------------------------------------\n"
				+"Empregado(s):\n"
				+"Nome		Salario\n"
				);
		
		for (Empregado empregado : empregados) {	
			System.out.println(empregado.getNome() + "\t" + empregado.getSalario());
		}
	}
	
	public void listarProfessores() {
		System.out.println("\n"
				+"------------------------------------------\n"
				+"Professor(es):\n"
				+"Nome		Salario		Bonus(h/a)\n"
				);
		
		for (Professor professor : professores) {	
			System.out.println(professor.getNome() + "\t" + professor.getSalario() + "\t\t" + professor.getBonus());
		}
	}
	
	public void listarHC() {
		System.out.println("\n"
				+"------------------------------------------\n"
				+"Lista de Headcount\n");
		listarEmpregados();
		listarProfessores();
	}
}
