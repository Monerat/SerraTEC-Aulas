package com.escola.serratec;

import java.util.ArrayList;

public class Aluno extends Pessoa{
	private int matricula;
	private ArrayList<Disciplina> disciplina = new ArrayList<>();
	
	public int getMatricula() {
		return matricula;
	}
	public void setMatricula(int matricula) {
		this.matricula = matricula;
	}
	public ArrayList<Disciplina> getDisciplina() {
		return disciplina;
	}
	public void addDisciplina(Disciplina disciplina) {
		if (!this.disciplina.contains(disciplina)) {
			this.disciplina.add(disciplina);
		}
		else System.out.println("Disciplina já adicionada.");
	}
}
