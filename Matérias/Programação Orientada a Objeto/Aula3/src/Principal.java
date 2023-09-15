public class Principal {
	
	public static void main(String[] args) {
		//balanco();
		conta();
	}	
	
	public static void balanco() {
		Balanco trimestre = new Balanco(1000,2000,3000);
		Balanco semestre = new Balanco(trimestre.getJaneiro(),trimestre.getFevereiro(),trimestre.getMarco(),4000,5000,6000);
		
	}
	
	public static void conta() {
		Conta conta1 = new Conta(12324,"De Arrascaeta",30000);
		Conta conta2 = new Conta(12325,"José da silva",2000);
		Conta conta3 = new Conta(12326,"Astrogildo Moreira",1000);
		
		
		conta1.printInfo();	
		conta2.printInfo();
		conta3.printInfo();
		
		conta3.transferir(conta2, 300);
		
		conta2.printInfo();
		conta3.printInfo();
	}
}
