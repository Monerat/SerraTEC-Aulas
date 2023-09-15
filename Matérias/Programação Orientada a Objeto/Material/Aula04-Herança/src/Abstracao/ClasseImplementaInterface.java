package Abstracao;

public class ClasseImplementaInterface implements ClasseInterface{
	public static final int CONSTI = 10;	
	static final String CONSTS = "MODIFICADO";
	
	@Override
	public void incluir() {
		// TODO Auto-generated method stub
		System.out.println("Inclusão dos dados");
	}

	@Override
	public void alterar() {
		// TODO Auto-generated method stub
		System.out.println("Alteração dos dados");
	}

	@Override
	public void excluir() {
		// TODO Auto-generated method stub
		System.out.println("Exclusão dos dados");
	}

	@Override
	public void imprimir() {
		// TODO Auto-generated method stub
		System.out.println("Impressão dos dados");
	}

	public void metodoProprio() {
		System.out.println("Método próprio manual");
	}
}
