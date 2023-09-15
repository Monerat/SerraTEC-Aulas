package principal;

import classes.*;
import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		Headcount faculdadeA = new Headcount();
		menuPrincipal(faculdadeA);
	}
	
	public static void menuPrincipal(Headcount hc) {
	 	@SuppressWarnings("resource")
		Scanner input = new Scanner(System.in);
		int opcao;
		
		do {
			System.out.println("Informe uma opção: ");
			menu();
			opcao = input.nextInt();
			
			switch (opcao) {
			case 0: {
				System.out.println("Programa encerrado.");
				break;
			}
			case 1: {
				hc.adicionarEmpregado(cadastrarEmpregado());
				break;				
			}
			case 2: {
				hc.adicionarProfessor(cadastrarProfessor());
				break;
			}
			case 3: {
				hc.getHC();
				break;
			}
			case 4: {
				hc.listarHC();
				break;
			}			
			default:
				System.err.println("Opção inválida.");
			}
				
		} while (opcao != 0);
		
		input.nextLine();
	}
	
	public static Empregado cadastrarEmpregado() {
		@SuppressWarnings("resource")
		Scanner input = new Scanner(System.in);
		Empregado empregado; 
		String nome;
		double salario;
		
		System.out.println("Informe o nome do Empregado: ");
		nome= input.nextLine();
		
		System.out.println("Informe o salário do Empregado: ");
		salario = input.nextDouble();
		
		empregado = new Empregado(nome,salario);
		
		return empregado;
		
	}
	
	public static Professor cadastrarProfessor() {
		@SuppressWarnings("resource")
		Scanner input = new Scanner(System.in);
		Professor professor; 
		String nome;
		double salario;
		int horasAula;
		
		System.out.println("Informe o nome do Professor: ");
		nome= input.nextLine();
		
		System.out.println("Informe o salário do Professor: ");
		salario = input.nextDouble();
		
		System.out.println("Informe a quantidade de horas aula do Professor: ");
		horasAula = input.nextInt();
		input.nextLine();
		
		professor = new Professor(nome,salario,horasAula);
		
		return professor;
		
	}
	
	public static void menu() {
		System.out.println("\n"
				+"---------------------------------\n"
				+"Cadastro de sala de aula\n"
				+"---------------------------------\n"
				+"1) Cadastrar Empregado\n"
				+"2) Cadastrar Professor\n"
				+"3) Informações sobre o Headcount\n"
				+"4) Listar Headcount\n"
				+"0) Sair do programa\n"
				+"---------------------------------\n"
				);
	}
}
