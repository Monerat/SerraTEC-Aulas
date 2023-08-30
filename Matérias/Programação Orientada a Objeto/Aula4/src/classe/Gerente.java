package classe;

public class Gerente extends Funcionario {
	
	private int senha;
	private int numFuncionarios;
	
	
	public int getSenha() {
		return senha;
	}


	public void setSenha(int senha) {
		this.senha = senha;
	}


	public int getNumFuncionarios() {
		return numFuncionarios;
	}


	public void setNumFuncionarios(int numFuncionarios) {
		this.numFuncionarios = numFuncionarios;
	}


	public boolean autenticar(int senha) {
		if(this.senha == senha) {
			System.out.println("Acesso permitido");
			return true;
		}
		else {
			System.err.println("Acesso negado");
			return false;
		}
	}
	
	
}