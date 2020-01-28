package bbdd.principal;
public class Programador extends Humano{

	public Programador() {
		
		super(100);
		instanciaMovimientos();
	}
	
	
	
	public void instanciaMovimientos() {
		// cafe
		Movimiento hacerEjercicios = new Movimiento("Hacer Ejercicios", 50, 5);
		//normalizar bc
		Movimiento boycecodd = new Movimiento("Normalizacion boyce-codd", 70, 2);
		//eso es una df trivial
		Movimiento sacarTriviales = new Movimiento("Quitar triviales", 100, 2);
		// dise�ar pro
		Movimiento disennoDeveloper = new Movimiento("Disennar dpm", 200,1 );
		// usar movil 
		Movimiento usarMovil = new Movimiento ("Hacer foto con el movil", 500, 1);
		
		super.movimientos.add(hacerEjercicios);
		super.movimientos.add(sacarTriviales);
		super.movimientos.add(boycecodd);
		super.movimientos.add(disennoDeveloper);
		super.movimientos.add(usarMovil);
		
		
	}
	
	
	

}
