package Pacote3;

import Abstracao.*;
import Pacote1.*;
import Pacote2.*;

public class Principal {

	public static void main(String[] args) {
		exemplos02();
		//exemplos3();
	}
	
	public static void exemplos01() {
		ClasseA a = new ClasseA();
		//ClasseB b = new ClasseB(); // classes default não tenho acesso
		ClasseC c = new ClasseC();
		//ClasseD d = new ClasseD(); // classes default não tenho acesso
		ClasseE e = new ClasseE();
		
		System.out.println("Classe A -----------------------------");
		a.atributoPublico = 2;
		a.metodoPublico();
		a.aula04();
		
		System.out.println("\nClasse C -----------------------------");
		c.atributoPublico = 2;
		c.metodoPublico();
		
		System.out.println("\nClasse E -----------------------------");
		e.atributoPublico =2;
		
		e.metodoProtected(); //método sobrescrito
		
		//membros herdados da ClasseA
		e.metodoPublico();
		e.atributoPublico = 3;
		e.aula04();
	}

	public static void exemplos02() {
		
		ClasseInterface objInterface = new ClasseImplementaInterface();

		System.out.println("objInterface -----------------------");
		objInterface.alterar();
		objInterface.incluir();
		objInterface.imprimir();
		objInterface.excluir();
		//objInterface.metodoProprio(); >>> Não tem acesso ao método novo da classe de Implemento
		System.out.println(ClasseImplementaInterface.CONSTI);
		
		
		ClasseImplementaInterface objImplementa = new ClasseImplementaInterface();
		
		System.out.println("\nobjImplementa -----------------------");
		objImplementa.alterar();
		objImplementa.incluir();
		objImplementa.imprimir();
		objImplementa.excluir();
		objImplementa.metodoProprio();
	}
	
	public static void exemplos3() {
		ClasseAbstrata objAbstrato = new ClasseHerdaAbstract();
		
		System.out.println("objAbstrato --------------------");
		objAbstrato.alterar();
		objAbstrato.excluir();
		objAbstrato.incluir();
		objAbstrato.imprimir();
		objAbstrato.setAtributoB(true);
		//objAbstrato.novaImpressao(); >> não tem acesso ao método por ser da classe herança
		
		ClasseHerdaAbstract objHerdaAbstrato = new ClasseHerdaAbstract();
		
		System.out.println("\nobjHerdaAbstrato --------------------");
		objHerdaAbstrato.alterar();
		objHerdaAbstrato.excluir();
		objHerdaAbstrato.incluir();
		objHerdaAbstrato.imprimir();
		objHerdaAbstrato.novaImpressao();
	}
}
