package tallerweb.supermercado.modelo;

import java.util.Iterator;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class ProductoTest {
	private Carrito carrito;

	@Before
	public void init() {
		carrito = Carrito.getInstance();
	}

	@Test
	public void testVaciar() {
		Producto p1 = new Producto();
		p1.setNombre("Harina");
		p1.setPrecio(12.01);
		carrito.agregarProducto(p1);
		carrito.vaciar();
		Assert.assertTrue(0 == carrito.verProductos().size());
	}

	@Test
	public void testAgregarProducto() {
		carrito.vaciar();
		Producto p1 = new Producto();
		p1.setNombre("Harina");
		p1.setPrecio(20.00);
		carrito.agregarProducto(p1);
		Assert.assertTrue(1 == carrito.verProductos().size());
	}

	@Test
	public void testAplicarDescuento() {
		carrito.vaciar();
		Producto p2 = new Producto();
		p2.setNombre("Harinas");
		p2.setPrecio(20.00);
		carrito.agregarProducto(p2);

		Descuento d1 = new Descuento();
		d1.setPorcentaje(10.00);
		carrito.aplicarDescuento(d1);

		Assert.assertEquals(2.00, carrito.totalAhorros(), 0.1);

	}

	@Test
	public void testVerProductos() {
		carrito.vaciar();

		Producto p1 = new Producto();
		p1.setNombre("harinas");
		p1.setPrecio(20.00);
		carrito.agregarProducto(p1);

		Producto p2 = new Producto();
		p2.setNombre("papa");
		p2.setPrecio(30.00);
		carrito.agregarProducto(p2);

		Producto p3 = new Producto();
		p3.setNombre("pollo");
		p3.setPrecio(130.00);
		carrito.agregarProducto(p3);

		int i=0;
		for (Iterator<Producto> it = carrito.verProductos().iterator(); it.hasNext();) {
			Producto each = it.next();
			switch (i){
	            case 0:
	            	 Assert.assertTrue("harinas".equals(each.getNombre()));
	                break;
	            case 1:
	                Assert.assertTrue("papa".equals(each.getNombre()));
	                break;
	            case 2:
	                Assert.assertTrue("pollo".equals(each.getNombre()));
	                break;
            }
			i++;
		}
	}

	@Test
	public void testTotal() {
		carrito.vaciar();
		carrito.vaciarDescuentos();

		Producto p1 = new Producto();
		p1.setNombre("Harinas");
		p1.setPrecio(20.00);
		carrito.agregarProducto(p1);

		Producto p2 = new Producto();
		p2.setNombre("papa");
		p2.setPrecio(30.00);
		carrito.agregarProducto(p2);

		Producto p3 = new Producto();
		p3.setNombre("pollo");
		p3.setPrecio(130.00);
		carrito.agregarProducto(p3);

		Descuento d1 = new Descuento();
		d1.setMonto(10.00);
		carrito.aplicarDescuento(d1);

		Descuento d4 = new Descuento();
		d4.setMonto(20.00);
		carrito.aplicarDescuento(d4);

		Descuento d2 = new Descuento();
		d2.setPorcentaje(10.00);
		carrito.aplicarDescuento(d2);

		Descuento d3 = new Descuento();
		d3.setPorcentaje(20.00);
		carrito.aplicarDescuento(d3);

		Assert.assertEquals(105.00, carrito.total(), 0.1);
	}

	@Test
	public void testTotalSinDescuentos() {
		carrito.vaciar();

		Producto p1 = new Producto();
		p1.setNombre("Harinas");
		p1.setPrecio(20.00);
		carrito.agregarProducto(p1);

		Producto p2 = new Producto();
		p2.setNombre("papa");
		p2.setPrecio(10.00);
		carrito.agregarProducto(p2);

		Producto p3 = new Producto();
		p3.setNombre("pollo");
		p3.setPrecio(100.00);
		carrito.agregarProducto(p3);

		Assert.assertEquals(130.00, carrito.totalSinDescuentos(), 0.1);

	}

	@Test
	public void testTotalAhorros() {
		carrito.vaciar();
		carrito.vaciarDescuentos();

		Producto p1 = new Producto();
		p1.setNombre("Harinas");
		p1.setPrecio(20.00);
		carrito.agregarProducto(p1);

		Producto p2 = new Producto();
		p2.setNombre("papa");
		p2.setPrecio(30.00);
		carrito.agregarProducto(p2);

		Producto p3 = new Producto();
		p3.setNombre("pollo");
		p3.setPrecio(130.00);
		carrito.agregarProducto(p3);

		Descuento d1 = new Descuento();
		d1.setMonto(10.00);
		carrito.aplicarDescuento(d1);

		Descuento d4 = new Descuento();
		d4.setMonto(20.00);
		carrito.aplicarDescuento(d4);

		Descuento d2 = new Descuento();
		d2.setPorcentaje(10.00);
		carrito.aplicarDescuento(d2);

		Descuento d3 = new Descuento();
		d3.setPorcentaje(20.00);
		carrito.aplicarDescuento(d3);

		Assert.assertEquals(75.00, carrito.totalAhorros(), 0.1);
	}
}
