package tallerweb.supermercado.modelo;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class Carrito {

	private static Carrito instance = new Carrito();
	private List<Producto> productos = new LinkedList<Producto>();
	private List<Descuento> descuentos = new LinkedList<Descuento>();

	private Carrito() {
	}

	public static Carrito getInstance() {
		return instance;
	}
	
	/**
	 * Elimina todos los productos del carrito.<br>
	 */
	public void vaciar() {
		this.productos.clear();
	}

	public void vaciarDescuentos() {
		this.descuentos.clear();
	}

	/**
	 * Agrega un producto al carrito.<br>
	 * 
	 * @param ingrediente
	 */
	public void agregarProducto(Producto producto) {
		this.productos.add(producto);
	}

	/**
	 * Permite agregar un descuento que será aplicado al carrito.<br>
	 * 
	 * @param descuento
	 */
	public void aplicarDescuento(Descuento descuento) {
		this.descuentos.add(descuento);
	}

	/**
	 * Lista todos los productos que forman parte .del carrito.<br>
	 * 
	 * @return
	 */
	public List<Producto> verProductos() {
		return this.productos;
	}

	public List<Descuento> verDescuentos() {
		return this.descuentos;
	}

	/**
	 * Devuelve el precio total del carrito aplicando descuentos si los hubiese,
	 * primero aplica los descuentos de monto y luego los de porcentaje.<br>
	 * 
	 * @return
	 */
	public Double total() {
		return this.totalSinDescuentos() - this.totalAhorros();
	}

	/**
	 * Devuelve el precio sin descuentos del carrito.<br>
	 * 
	 * @return
	 */
	public Double totalSinDescuentos() {
		Double total = 0.00;

		for (Iterator<Producto> it = this.verProductos().iterator(); it
				.hasNext();) {
			Producto each = it.next();
			total += each.getPrecio();
		}

		return total;
	}

	/**
	 * Devuelve el dinero ahorrado gracias a los descuentos.<br>
	 * 
	 * @return
	 */
	public Double totalAhorros() {
		Double totalPorcentaje = 0.00;
		Double totalMonto = 0.00;
		Double totalAPagar = this.totalSinDescuentos();

		for (Iterator<Descuento> it = this.descuentos.iterator(); it.hasNext();) {
			Descuento each = it.next();
			totalMonto += (each.getMonto() != null) ? each.getMonto() : 0.00;
			totalPorcentaje += (each.getPorcentaje() != null) ? each
					.getPorcentaje() : 0.00;
		}
		totalAPagar -= totalMonto;
		totalPorcentaje = (totalPorcentaje > 0) ? (totalAPagar * totalPorcentaje) / 100
				: 0.00;
		return totalMonto + totalPorcentaje;
	}
}
