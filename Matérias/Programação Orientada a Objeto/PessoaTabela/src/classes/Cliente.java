package classes;

import java.util.Scanner;

import contantes.Util;

public class Cliente extends Pessoa {
	private int idcliente;

	public int getIdcliente() {
		return idcliente;
	}

	public void setIdcliente(int idcliente) {
		this.idcliente = idcliente;
	}
	
 	public static Cliente cadastrarCliente() {
		classes.Cliente c = new classes.Cliente();
		
		@SuppressWarnings("resource")
		Scanner in = new Scanner(System.in);
		
		System.out.println(Util.LINHA);
		System.out.println("Cadastro de cliente: ");
		System.out.println(Util.LINHA);
		
		Util.br();
		
		System.out.println("Informe o nome: ");
		String s = in.nextLine();
		c.setNome(s);
	
		System.out.println("Informe o endereco: ");
		s = in.nextLine();
		c.setEndereco(s);
		
		c.setDtNasc(Util.validarData("Informe a data de nascimento (dd/MM/yyyy): "));
		
		System.out.println("Informe o CPF: ");
		s = in.nextLine();
		c.setCpf(s);
		
		System.out.println("Informe o RG: ");
		s = in.nextLine();
		c.setRg(s);
		
		System.out.println("Informe o sexo: ");
		char ch = in.next().charAt(0);
		c.setSexo(ch);
				
		return c;
	}
}
