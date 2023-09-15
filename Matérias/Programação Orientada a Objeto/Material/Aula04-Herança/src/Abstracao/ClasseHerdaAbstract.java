package Abstracao;

public class ClasseHerdaAbstract extends ClasseAbstrata{

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

	public void novaImpressao() {
		System.out.println("Imprimir de outro jeito");
	}
}
