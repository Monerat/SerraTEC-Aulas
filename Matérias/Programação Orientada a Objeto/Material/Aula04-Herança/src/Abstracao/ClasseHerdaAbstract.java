package Abstracao;

public class ClasseHerdaAbstract extends ClasseAbstrata{

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

	public void novaImpressao() {
		System.out.println("Imprimir de outro jeito");
	}
}
