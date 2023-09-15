package Pacote1;

import Pacote2.*;

public class ClasseA {
	public int atributoPublico;
	protected int atributoProtected;
	private int atributoPrivate;
	int atributoDefault;
	
	public void metodoPublico () {
		System.out.println("Método public da Classe A");
	}
	protected void metodoProtected ( ) {
		System.out.println("Método protected da Classe A");
	}
	private void metodoPrivate() {
		
	}
	void metodoDefault () {
		
	}
	
	public void aula04() {
		
		// ClasseA - todos os dados
		this.atributoDefault = 1;
		this.atributoPrivate = 1;
		this.atributoProtected = 1;
		this.atributoPublico = 1;
		
		metodoDefault();
		metodoPrivate();
		metodoProtected();
		metodoPublico();
		//------------------------------
		
		ClasseB b = new ClasseB(); //default do mesmo pacote
		
		b.atributoDefault = 1;
		b.atributoProtected = 1;
		b.atributoPublico = 1;
		
		b.metodoDefault();
		b.metodoProtected();
		b.metodoPublico();
		b.aula03();
		//------------------------------
		ClasseC c = new ClasseC(); //public de outro pacote
		
		c.atributoPublico = 1;		
		c.metodoPublico();
		//------------------------------
		//ClasseD d = new ClasseD(); default de outro pacote
		
		ClasseE e = new ClasseE();
		e.toString();
	}
}
