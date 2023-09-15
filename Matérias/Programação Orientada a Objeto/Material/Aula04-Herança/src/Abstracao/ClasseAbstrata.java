package Abstracao;

public abstract class ClasseAbstrata {
	private String atributoS;
	private int atributoI;
	private boolean atributoB;
	
	public String getAtributoS() {
		return atributoS;
	}
	public void setAtributoS(String atributoS) {
		this.atributoS = atributoS;
	}
	public int getAtributoI() {
		return atributoI;
	}
	public void setAtributoI(int atributoI) {
		this.atributoI = atributoI;
	}
	public boolean isAtributoB() {
		return atributoB;
	}
	public void setAtributoB(boolean atributoB) {
		this.atributoB = atributoB;
	}
	public void incluir() {
		System.out.println("Inclusão dos dados");
	}
	public void alterar() {
		System.out.println("Alteração dos dados");
	}
	public abstract void excluir();
	public abstract void imprimir();
}
