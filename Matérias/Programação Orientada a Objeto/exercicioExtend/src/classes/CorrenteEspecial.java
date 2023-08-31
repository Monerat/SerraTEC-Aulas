package classes;

public class CorrenteEspecial extends Corrente{
	private boolean cartaoCredito;
	private boolean investimento;
	private String numeroCartao;
	private String dataVenc;
	
	public boolean isCartaoCredito() {
		return cartaoCredito;
	}
	public void setCartaoCredito(boolean cartaoCredito) {
		this.cartaoCredito = cartaoCredito;
	}
	public boolean isInvestimento() {
		return investimento;
	}
	public void setInvestimento(boolean investimento) {
		this.investimento = investimento;
	}
	public String getNumeroCartao() {
		return numeroCartao;
	}
	public void setNumeroCartao(String numeroCartao) {
		this.numeroCartao = numeroCartao;
	}
	public String getDataVenc() {
		return dataVenc;
	}
	public void setDataVenc(String dataVenc) {
		this.dataVenc = dataVenc;
	}
	
	
}
