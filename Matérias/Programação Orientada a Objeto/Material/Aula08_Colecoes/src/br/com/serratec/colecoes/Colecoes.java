package br.com.serratec.colecoes;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class Colecoes {
	/* Parecido com ArrayList, pois incorpora a interface List.
	 * A LinkedList armazena seus itens em "cont�ineres". 
	 * A lista tem um link para o primeiro cont�iner e cada cont�iner 
	 * tem um link para o pr�ximo cont�iner na lista. Para adicionar 
	 * um elemento � lista, o elemento � colocado em um novo cont�iner 
	 * e esse cont�iner � vinculado a um dos outros cont�ineres da lista. 
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
		unidadesFederativas.put("AM", "Amap�");
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
