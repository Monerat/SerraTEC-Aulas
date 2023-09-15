package com.principal.serratec;

import java.util.ArrayList;
import java.util.Scanner;

import com.escola.serratec.Aluno;
import com.escola.serratec.Disciplina;
import com.escola.serratec.Docente;
import com.escola.serratec.SalaDeAula;


public class Principal {
	
	//public static Scanner input = new Scanner(System.in);

	public static void main(String[] args) {
		SalaDeAula salaAula = new SalaDeAula();
		
		menuPrincipal(salaAula);
	}
	
	public static Aluno cadastrarAluno(SalaDeAula sa) {
		@SuppressWarnings("resource")
		Scanner input = new Scanner(System.in);
		Aluno aluno = new Aluno();
		
		System.out.println("Informe o nome do aluno: ");
		String s = input.nextLine();
		aluno.setNome(s);
		
		System.out.println("Informe o endereço do aluno: ");
		s = input.nextLine();
		aluno.setEndereco(s);
		
		System.out.println("Informe o CPF do aluno: ");
		s = input.nextLine();
		aluno.setCpf(s);
		
		System.out.println("Informe a idade do aluno: ");
		int i = input.nextInt();
		aluno.setIdade(i);
		
		System.out.println("Informe a matrícula do aluno: ");
		i = input.nextInt();
		aluno.setMatricula(i);
		
		char r;
		do {
			System.out.println("Informe a disciplina do aluno: ");
			aluno.addDisciplina(cadastrarDisciplinaAluno(sa));
			System.out.println("Deseja informar mais uma disciplina? (S/N)");
			r = input.next().charAt(0);
			
		} while((r=='s') || (r=='S'));
		
		input.nextLine();
		
		return aluno;
	}
	
	public static Disciplina cadastrarDisciplinaAluno(SalaDeAula sa) {				
		@SuppressWarnings("resource")
		Scanner input = new Scanner(System.in);
		int index = 0;
		
		sa.listarDisciplinasDaSala();
		System.out.println("Escolha o código da disciplina: ");
		index = input.nextInt();
		
		input.nextLine();
		
		return sa.getDisciplinas().get(index-1);
	}
	
	public static Docente cadastrarProfessor() {
		@SuppressWarnings("resource")
		Scanner input = new Scanner(System.in);
		Docente docente = new Docente();
		
		System.out.println("Informe o nome do professor: ");
		String s = input.nextLine();		
		docente.setNome(s);
		
		System.out.println("Informe a especialidade do professor: ");
		s = input.nextLine();		
		docente.setEspecialidade(s);
		
		System.out.println("Informe o CPF do professor: ");
		s = input.nextLine();		
		docente.setCpf(s);
		
		System.out.println("Informe a disciplina do professor: ");
		s = input.nextLine();		
		
		docente.getDisciplina().setMateria(s);
		docente.getDisciplina().setHora(0);
		docente.getDisciplina().setMinuto(50);
		
		System.out.println("Informe o endereço do professor: ");
		s = input.nextLine();
		docente.setEndereco(s);
		
		System.out.println("Informe a idade do professor: ");
		int i = input.nextInt();
		docente.setIdade(i);
		
		input.nextLine();
		
		return docente;
	}
	
	public static Disciplina cadastrarDisciplina() {
		@SuppressWarnings("resource")
		Scanner in = new Scanner(System.in);
		Disciplina disciplina = new Disciplina();
		
		System.out.println("Informe a disciplina: ");
		String s = in.nextLine();
		
		disciplina.setMateria(s);
		System.out.println("Valor de s: " + s);
		disciplina.setHora(0);
		disciplina.setMinuto(50);
		
		return disciplina;
	}
	
	public static SalaDeAula cadastrarTurma() {
		@SuppressWarnings("resource")
		Scanner input = new Scanner(System.in);
		SalaDeAula sa = new SalaDeAula();
		
		System.out.println("Informe o número da turma: ");
		String s = input.nextLine();
		sa.setTurma(s);
		
		input.nextLine();
		
		return sa;
	}
	
	public static void menuPrincipal(SalaDeAula sa) {
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
				sa.setTurma(cadastrarTurma().getTurma());
				break;				
			}
			case 2: {
				sa.adicionarDisciplina(cadastrarDisciplina());
				break;
			}
			case 3: {
				sa.adicionarProfessor(cadastrarProfessor());
				break;
			}
			case 4: {
				sa.adicionarAluno(cadastrarAluno(sa));
				break;
			}
			case 5: {
				imprimirCadastro(sa);
				break;
			}			
			default:
				System.out.println("Opção inválida.");
				//throw new IllegalArgumentException("Value inválido: " + opcao);
			}
			
		} while (opcao != 0);
		
		input.nextLine();
	}
	
	public static void menu() {
		System.out.println("""
				---------------------------------
				Cadastro de sala de aula
				---------------------------------
				1) Cadastrar turma
				2) Cadastrar disciplina
				3) Cadastrar professor
				4) Cadastrar aluno
				5) Imprimir dados da sala de aula
				0) Sair do programa
				---------------------------------
				""");		
	}
	
	public static void imprimirCadastro(SalaDeAula sa) {
		sa.imprimirDadosSalaDeAula();
	}

}
