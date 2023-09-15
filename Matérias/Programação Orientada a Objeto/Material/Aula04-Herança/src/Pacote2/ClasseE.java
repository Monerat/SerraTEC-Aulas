package Pacote2;

import Pacote1.ClasseA;

public class ClasseE extends ClasseA{
	@Override
	public void metodoProtected() {
		// TODO Auto-generated method stub
		super.metodoProtected();
		System.out.println("Método protected da ClasseE");
		metodo();
	}
	
	private void metodo() {
		// TODO Auto-generated method stub
		System.out.println("Método private da ClasseE");
	}
}
