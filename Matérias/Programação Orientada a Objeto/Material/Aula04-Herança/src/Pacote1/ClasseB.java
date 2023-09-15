package Pacote1;

import Pacote2.ClasseC;
import Pacote2.ClasseE;

class ClasseB {
	public int atributoPublico;
	protected int atributoProtected;
	private int atributoPrivate;
	int atributoDefault;
	
	public void metodoPublico () {
		
	}
	protected void metodoProtected ( ) {
		
	}
	private void metodoPrivate () {
		
	}
	void metodoDefault () {
		
	}
	
	public void aula03() {
		this.atributoDefault = 1;
		this.atributoPrivate = 1;
		this.atributoProtected = 1;
		this.atributoPublico = 1;
		
		metodoDefault();
		metodoPrivate();
		metodoProtected();
		metodoPublico();
		
		ClasseA a = new ClasseA();
		
		a.atributoDefault = 1;
		a.atributoProtected = 1;
		a.atributoPublico = 1;
		
		a.metodoDefault();
		a.metodoProtected();
		a.metodoPublico();
		
		ClasseC c = new ClasseC();
		
		c.atributoPublico = 1;
		c.metodoPublico();
		
		//ClasseD d = new ClasseD();
		
		ClasseE e = new ClasseE();
		e.atributoProtected = 1;
		e.atributoPublico = 1;
		e.metodoProtected();
		e.metodoPublico();
		
	}
}
