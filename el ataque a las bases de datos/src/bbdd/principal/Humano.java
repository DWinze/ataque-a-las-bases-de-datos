package bbdd.principal;
import java.util.ArrayList;


public abstract class Humano {
	private int vida;
	 ArrayList<Movimiento> movimientos;
	
	
	public Humano (int v) {
		
		this.vida=v;
		movimientos = new ArrayList<Movimiento>();
	}


	public int getVida() {
		return vida;
	}


	public void setVida(int vida) {
		this.vida = vida;
	}


	public ArrayList<Movimiento> getMovimientos() {
		return movimientos;
	}


	public void setMovimientos(ArrayList <Movimiento> movimientos) {
		this.movimientos = movimientos;
	}
	
	

	public void usarMovimiento(Movimiento m, Humano h) {
		
		setVida(m.getDanno()+h.vida);
		// el contador es para saber que movimiento elige
		int cnt=0;
		for(Movimiento move: this.movimientos) {
			
			if(move.getNombre().equals(m.getNombre())) {
				this.movimientos.get(cnt).setUsos(this.movimientos.get(cnt).getUsos()-1);			
			}
			cnt++;
		}
		
	}
	
	
	
	

}
