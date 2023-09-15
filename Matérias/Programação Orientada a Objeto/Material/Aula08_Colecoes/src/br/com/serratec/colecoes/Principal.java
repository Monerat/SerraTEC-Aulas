package br.com.serratec.colecoes;

import java.util.Iterator;


public class Principal {
	public static void main(String[] args) {
		Colecoes col = new Colecoes();
		
		col.carros.add("Mazda");
		col.carros.add("Gol");
		col.carros.add("Fusca");
		col.carros.add("Citroen");
		col.carros.add("Corolla");
		col.carros.add("Tempra");
		col.carros.add("Fusca");
				
		Iterator<String> it = col.carros.iterator(); 
		
		System.out.println("Pegar o valor informando a chave: ");
		System.out.println("1) " + col.getUF().get("RJ"));
		
		System.out.println("\nLista de Estados pelo for each:");
		for (String i : col.getUF().keySet()) {
		    if (col.getUF().get(i) == "Amapá") {  
		    	System.out.println("2) key: " + i + " value: " + col.getUF().get(i));
		    	break;
		    }
		}
		
		System.out.println("\nPercorre todas as chaves e imprime a chave e o valor: ");		
		for (String i : col.getUF().keySet()) {
		    System.out.println("3) key: " + i + " value: " + col.getUF().get(i));
		}
		
		System.out.println("\nDevolve true ou false se contiver o valor: ");
		System.out.println("4) Tem Amarelo??: "+ col.cores.contains("Amarelo"));
		
		System.out.println("\nPercorre todas as cores: ");
		for (String i : col.cores) {
			System.out.println("5) " +i);
		}
		
		/*
		System.out.println("\nPercorre todos os carros pelo iterator: ");
		while (it.hasNext()) {
			System.out.println(); 
			it.next();
		}*/
		
		System.out.println("\nPercorre todos os carros por um for comum: ");
		System.out.println();
		for (int i=0; i< col.carros.size();i++) {
			System.out.println("6) carro: "+  col.carros.get(i));
		
		}	
		
	}
}
