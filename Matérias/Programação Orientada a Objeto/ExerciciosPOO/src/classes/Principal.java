package classes;

public class Principal {
	public static void main(String[] args) {
		Pessoa cliente1 = new Pessoa("11111111111", "José da Silva", 
				"22","999998888","21", "99998887", "21", "88884446",
				"99999444",187, "Rua Jose Sauro da Silva", "Vila Sauro", "Sauropolis",
				"99999443",185, "Avenida Jose Sauro da Silva", "Morro dos Sauro", "Sauropolis", 
				"99999441",180, "Alameda Jose Sauro da Silva", "Comunidade dos Sauro", "Sauropolis");
		
		Pessoa cliente2 = new Pessoa("11111111112", "Astrogildo de Marte", 
				"22","999918888","21", "99918887", "21", "88814446",
				"99999444",13, "Rua Jose Sauro da Silva", "Vila Sauro", "Sauropolis",
				"99999443",18, "Avenida Jose Sauro da Silva", "Morro dos Sauro", "Sauropolis", 
				"99999441",110, "Alameda Jose Sauro da Silva", "Comunidade dos Sauro", "Sauropolis");
		
		Pessoa cliente3;
		
		
		cliente1.printInfo();
		cliente2.printInfo();
		
		cliente3 = cadastrarPessoa();
		cliente3.printInfo();
	}
	
	public static Pessoa cadastrarPessoa() {
		Pessoa p = new Pessoa();		
	return p;
	}
}