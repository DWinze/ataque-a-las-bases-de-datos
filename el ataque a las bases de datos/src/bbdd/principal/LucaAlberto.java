package bbdd.principal;import java.util.ArrayList;

public class LucaAlberto extends Humano{

	public LucaAlberto() {
		
		super(500);
		instanciaMovimientos();
		
	}
	
	
	
	
	public void instanciaMovimientos() {
		//seguimos con las practicas
		Movimiento seguimosConPracticas = new Movimiento("Seguimos con las practicas", -20, 1);
		//castillo
		Movimiento llavesCastillo = new Movimiento("Las llaves de un castillo", -5, 1);
		//eso es una df trivial
		Movimiento dfTrivial = new Movimiento("df trivial", -30, 1);
		// ese diseño no se parece al mio
		Movimiento disennoMalo = new Movimiento("Ese diseño no se parece al mio", -70, 1);
		// prohibido moviles
		Movimiento prohibidoMoviles = new Movimiento ("Eso es un movil??????", -90, 1);
		
		super.movimientos.add(seguimosConPracticas);
		super.movimientos.add(llavesCastillo);
		super.movimientos.add(dfTrivial);
		super.movimientos.add(disennoMalo);
		super.movimientos.add(prohibidoMoviles);
		
		
	}
	
	
	
	

}
