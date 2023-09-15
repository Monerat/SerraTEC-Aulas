package main;
import java.util.Scanner;

import classes.*;

public class Principal {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		Pessoa ps1= new Pessoa();
		boolean controle = false;
		
		System.out.println("Informe o nome: ");
		ps1.setNome(input.nextLine());
		
		System.out.println("\nInforme o cpf: ");
		ps1.setCpf(input.nextLine());
		
		do {
			System.out.println("\nInforme uma data (dd/mm/aaaa): ");
			
			if (!ps1.setDataNasc(input.nextLine())) {
				controle = true;
			} else {
				controle = false;
			}
		} while (controle);
		
	}
}
