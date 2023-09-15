package classes;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Pessoa {
	private String nome;
	private String cpf;
	private Date dataNasc;
	private SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	
	
	
	public Pessoa() {
	}
	public Pessoa(String nome, String cpf, String dataNasc) {
		this.nome = nome;
		this.cpf = cpf;
		setDataNasc(dataNasc);
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public Date getDataNasc() {
		return dataNasc;
	}
	public boolean setDataNasc(String dataNasc) {
		try {
			this.dataNasc = sdf.parse(dataNasc);
			return true;
		} catch(ParseException e) {
			System.err.println("Data inválida!");
			return false;
		}	
	}
	
	@Override
	public String toString() {
		return "Pessoa [nome=" + nome + ", cpf=" + cpf + ", dataNasc=" + dataNasc + "]";
	}
	
}
