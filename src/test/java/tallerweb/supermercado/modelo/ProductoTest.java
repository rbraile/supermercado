package tallerweb.supermercado.modelo;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class ProductoTest {
    private Carrito carrito;
    
    @Before
    public void init(){
        carrito = Carrito.getInstance(); 
    }

//    @Test
//    public void testVaciar() {
//        // Implementar
//    }

    @Test
    public void testAgregarProducto() {
    	
		Producto p1 = new Producto();
		p1.setNombre("Harina");
		p1.setPrecio(12.01);
		carrito.agregarProducto(p1);
		Assert.assertTrue(1 == carrito.verProductos().size());
    }

//    @Test
//    public void testAplicarDescuento() {
//        // Implementar
//    }
//
//    @Test
//    public void testVerProductos() {
//        // Implementar
//    }
//
//    @Test
//    public void testTotal() {
//        // Implementar
//    }
//
//    @Test
//    public void testTotalSinDescuentos() {
//        // Implementar
//    }
//
//    @Test
//    public void testTotalAhorros() {
//        // Implementar
//    }
}
