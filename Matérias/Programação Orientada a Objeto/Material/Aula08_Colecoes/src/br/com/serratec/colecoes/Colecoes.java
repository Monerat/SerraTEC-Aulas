package br.com.serratec.colecoes;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class Colecoes {
	/* Parecido com ArrayList, pois incorpora a interface List.
	 * A LinkedList armazena seus itens em "contêineres". 
	 * A lista tem um link para o primeiro contêiner e cada contêiner 
	 * tem um link para o próximo contêiner na lista. Para adicionar 
	 * um elemento à lista, o elemento é colocado em um novo contêiner 
	 * e esse contêiner é vinculado a um dos outros contêineres da lista. 
	 */
	
	public LinkedList<String> carros = new LinkedList<>();
	private HashMap<String, String> unidadesFederativas = new HashMap<String, String>(); 
	
	public HashMap<String, String> getUF() {
		return unidadesFederativas;
	}
	
	public HashSet<String> cores = new HashSet<String>();
	
	public Colecoes() {
		unidadesFederativas.put("AC", "Acre");
		unidadesFederativas.put("AL", "Alagoas");
		unidadesFederativas.put("AM", "Amapá");
		unidadesFederativas.put("BA", "Bahia");
		unidadesFederativas.put("RJ", "Rio de Janeiro");
		unidadesFederativas.put("RJ", "Rio de Janeiro");
		
		cores.add("Azul");
		cores.add("Azul");
		cores.add("Azul");
		cores.add("Azul");
		cores.add("Amarelo");
		cores.add("Preto");
		cores.add("Branco");
		cores.add("Vermelho");
		cores.add("Verde");
	}
	
	public void imprimirCarros() {
		System.out.println("Carros: " + carros);
	}
}
