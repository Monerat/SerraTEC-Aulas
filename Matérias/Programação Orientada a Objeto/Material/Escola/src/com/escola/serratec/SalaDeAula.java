package com.escola.serratec;

import java.util.ArrayList;

public class SalaDeAula {
	private String turma;
	private ArrayList<Aluno> alunos = new ArrayList<>();
	private ArrayList<Docente> professores = new ArrayList<>();
	private ArrayList<Disciplina> disciplinas = new ArrayList<>();
	
	public void adicionarAluno(Aluno aluno) {
		boolean existeAluno = false;
		
		for (Aluno al : alunos) {
			if (al.getCpf() == aluno.getCpf()) {
				existeAluno = true;
				System.out.println("Aluno já cadastrado");
				break;
			}
		}
		
		if (!existeAluno)
			alunos.add(aluno);		
	}
	
	public void adicionarDisciplina(Disciplina disciplina) {
		boolean existeDisciplina = false;
		
		for (Disciplina di : disciplinas) {
			if (di.getMateria() == disciplina.getMateria()) {
				existeDisciplina = true;
				System.out.println("Disciplina já adicionada.");
				break;
			}
		}
		
		if (!existeDisciplina)
			disciplinas.add(disciplina);
	}
	
	public void adicionarProfessor(Docente professor) {
		boolean existeProfessor = false;
		
		for (Docente prof : professores) {
			if (prof.getCpf() == professor.getCpf()) {
				existeProfessor = true;
				System.out.println("Professor já cadastrado");
				break;
			}
		}
		
		if (!existeProfessor)
			professores.add(professor);
	}
	
	public void adicionarDisciplina(Aluno aluno, Disciplina disciplina) {
		boolean existeAluno = false;
		boolean existeDisciplina = false;
		int index = 0;
		
		for (Aluno al : alunos) {
			if (al.getCpf() == aluno.getCpf()) {
				existeAluno = true;
				index = alunos.lastIndexOf(al);
				
				for (Disciplina di : alunos.get(index).getDisciplina()) {
					if (di.getMateria() == disciplina.getMateria()) {
						existeDisciplina = true;
						break;
					}					
				}
				
				if (!existeDisciplina) {
					alunos.get(index).addDisciplina(disciplina);
				} else
					System.out.println("Aluno já matriculado na disciplina.");
				
				break;
			}
		}
		
		if (!existeAluno)
			System.out.println("Não foi possível adicionar a disciplina, pois o aluno não foi encontrado.");
	}
	
	public String getTurma() {
		return turma;
	}
	public void setTurma(String turma) {
		this.turma = turma;
	}
	
	public ArrayList<Disciplina> getDisciplinas() {
		return disciplinas;
	}
	
	public void listarDisciplinasDaSala() {
		int i = 0;
		
		System.out.println("""
				------------------------------------
				Lista de disciplinas da sala de aula
				------------------------------------									
				""");
		for (Disciplina di : disciplinas) {
			i++;			
			System.out.println(i + "- " + di.getMateria());
		}
	}
	
	public void listarProfessoresDaSala() {
		System.out.println("""
				------------------------------------------
				Professor(es):
				Nome		Especialidade		Disciplina									
				""");
		
		for (Docente d : professores) {	
			System.out.println(d.getNome() + "\t" + d.getEspecialidade() + "\t\t" + d.getDisciplina().getMateria());
		}
	}
	
	public void listarAlunosdaSala() {
		int i = 0;
		int index = 0;
		
		System.out.println("""
				------------------------------------------
				Aluno(s):
				Nome			CPF		Idade
				""");
		for (Aluno a : alunos) {
			i++;			
			System.out.println(i + "- " + a.getNome() + "\t\t" + a.getCpf() + "\t\t" + a.getIdade());
			System.out.println("""
					------------------------------------------
					Matriculado na(s) disciplina(s)					
					""");
			index = alunos.lastIndexOf(a);
			
			for (Disciplina di : alunos.get(index).getDisciplina()) {		
				System.out.println(di.getMateria());
			}
		}
	}
	
	public void imprimirDadosSalaDeAula() {
		System.out.println("""
				------------------------------------------
				Dados cadastrais da turma """);
		System.out.print(this.turma);
		
		listarProfessoresDaSala();
		listarAlunosdaSala();		
		listarDisciplinasDaSala();
	}
}
