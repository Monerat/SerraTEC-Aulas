
public class Balanco {
	private double janeiro;
	private double fevereiro;
	private double marco;
	private double abril;
	private double maio;
	private double junho;
	private double julho;
	
	public double getJaneiro() {
		return janeiro;
	}

	public double getFevereiro() {
		return fevereiro;
	}

	public double getMarco() {
		return marco;
	}

	public double getAbril() {
		return abril;
	}

	public double getMaio() {
		return maio;
	}

	public double getJunho() {
		return junho;
	}

	public double getJulho() {
		return julho;
	}

	public Balanco(double janeiro, double fevereiro, double marco) {
		this.janeiro = janeiro;
		this.fevereiro = fevereiro;
		this.marco = marco;
		
		System.out.println("Atribuido o trimestre");
	}
	
	public Balanco(double janeiro, double fevereiro, double marco, double abril, double maio, double junho) {
		
		this(janeiro,fevereiro,marco);
		this.janeiro = abril;
		this.maio = maio;
		this.junho = junho;
		
		System.out.println("Atribuido o semestre");
	}
	
}
