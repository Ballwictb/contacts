package Ejercicio;

public class Contact2 {
	private String nombre;
	private String tlf;
	
	
	public Contact2(String nombre, String tlf) {
		super();
		this.nombre = nombre;
		this.tlf = tlf;
	}


	public String getNombre() {
		return nombre;
	}


	public String getTlf() {
		return tlf;
	}


	@Override
	public String toString() {
		return "nombre =" + nombre + ", tlf = " + tlf;
	}
	
	
	
	
}
