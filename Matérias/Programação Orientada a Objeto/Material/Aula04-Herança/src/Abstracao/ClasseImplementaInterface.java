package Abstracao;

public class ClasseImplementaInterface implements ClasseInterface{
	public static final int CONSTI = 10;	
	static final String CONSTS = "MODIFICADO";
	
	@Override
	public void incluir() {
		// TODO Auto-generated method stub
		System.out.println("Inclus�o dos dados");
	}

	@Override
	public void alterar() {
		// TODO Auto-generated method stub
		System.out.println("Altera��o dos dados");
	}

	@Override
	public void excluir() {
		// TODO Auto-generated method stub
		System.out.println("Exclus�o dos dados");
	}

	@Override
	public void imprimir() {
		// TODO Auto-generated method stub
		System.out.println("Impress�o dos dados");
	}

	public void metodoProprio() {
		System.out.println("M�todo pr�prio manual");
	}
}
