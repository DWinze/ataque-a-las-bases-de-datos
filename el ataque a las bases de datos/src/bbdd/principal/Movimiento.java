
package bbdd.principal;
public class Movimiento {
	
	private String nombre;
	private int danno;
	private int usos;
	
	
	public Movimiento(String n, int d, int u) {
		this.nombre=n;
		this.danno=d;
		this.usos=u;
			
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
		
	}

	public int getDanno() {
		return danno;
	}

	public void setDanno (int danno) {
		this.danno = danno;
	}

	public int getUsos() {
		return usos;
	}

	public void setUsos(int usos) {
		this.usos = usos;
	}

	@Override
	public String toString() {
		return "Movimiento: " + nombre + "   ----- " + " usos disponibles: "  + usos ;
	}
	
	

}
