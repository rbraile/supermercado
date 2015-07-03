package tallerweb.supermercado.controladores;


import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import tallerweb.supermercado.modelo.AltaProducto;
import tallerweb.supermercado.modelo.AltaStockCommand;
import tallerweb.supermercado.modelo.Carrito;
import tallerweb.supermercado.modelo.Producto;
import tallerweb.supermercado.modelo.Stock;

@Controller
public class inicioController {
	
	@ModelAttribute("producto")
	public Producto createModel() {
	    return new Producto();
	}
	
	@ModelAttribute("altaStockCommand")
	public AltaStockCommand createModel1() {
	    return new AltaStockCommand();
	}
	
	@ModelAttribute("altaProducto")
	public AltaProducto createModel2() {
	    return new AltaProducto();
	}
	
	@RequestMapping(value = "/agregarProducto", method = RequestMethod.GET)
	public ModelAndView agregarProducto() {
		ModelAndView miVista = new ModelAndView();
		miVista.setViewName("agregarProducto");
		return miVista;
	}

	@RequestMapping(value = "/agregar", method = RequestMethod.POST)
	public String formulario(@ModelAttribute("Producto") Producto p1) {
		Stock stock = Stock.getInstance();
		stock.agregarProducto(p1);
		
		String url = "/productos";
		return "redirect:" + url;
	}

	@RequestMapping(value = "/productos", method = RequestMethod.GET)
	public ModelAndView lista() {
		ModelMap miMapa = new ModelMap();
		Stock stock = Stock.getInstance();
		Set<Map.Entry<Producto, Integer>> stocks = stock.obtenerStock().entrySet();

		ModelAndView miVista = new ModelAndView();
		miVista.addAllObjects(miMapa);
		miVista.addObject("productos", stocks);
		miVista.setViewName("productos");
		return miVista;
	}
	
	@RequestMapping(value = "/agregarStock", method = RequestMethod.GET)
	public ModelAndView agregarStock() {
		
		ModelAndView miVista = new ModelAndView();
		miVista.setViewName("agregarStock");
		return miVista;
	}
	
	@RequestMapping(value = "/agregarStockForm", method = RequestMethod.POST)
	public String formulario(AltaStockCommand altaStockCommand) {
		Stock stock = Stock.getInstance();
		
		for (Iterator<Producto> it = stock.listarProductosDisponibles().iterator(); it.hasNext();) {
			Producto each = it.next();
			if(each.getNombre().equals(altaStockCommand.getNombre())) {
				stock.agregarStock(each, altaStockCommand.getCantidad());
			}
		}
		
		String url = "/stock";
		return "redirect:" + url;
	}

//	@RequestMapping(value = "/agregarStock", method = RequestMethod.GET)
//	public ModelAndView agregarStock() {
//		Stock stock = Stock.getInstance();
//		
//		ModelAndView miVista = new ModelAndView();
//		miVista.setViewName("agregarStock");
//		return miVista;
//	}
	
	@RequestMapping(value = "/stock", method = RequestMethod.GET)
	public ModelAndView stock() {
		ModelMap miMapa = new ModelMap();
		Stock stock = Stock.getInstance();

		Set<Map.Entry<Producto, Integer>> stocks = stock.obtenerStock().entrySet();
		
		ModelAndView miVista = new ModelAndView();
		miVista.addAllObjects(miMapa);
		miVista.addObject("stocks", stocks);
		miVista.setViewName("stock");
		return miVista;
	}
	
	@RequestMapping(value = "/agregarACarrito/{nombre}", method = RequestMethod.GET)
	public String agregarACarrito(@PathVariable String nombre) {
		Carrito carrito = Carrito.getInstance();
		Stock stock = Stock.getInstance();
		
		for (Iterator<Producto> it = stock.listarProductosDisponibles().iterator(); it.hasNext();) {
			Producto each = it.next();
			if(each.getNombre().equals(nombre)) {
				Producto p1 = new Producto();
				p1.setNombre(each.getNombre());
				p1.setPrecio(each.getPrecio());
				carrito.agregarProducto(p1);
				stock.comprarProducto(p1, 1);
			}
		}
		
		String url = "/";
		return "redirect:" + url;
	}	
	
	@RequestMapping(value = "/carrito", method = RequestMethod.GET)
	public ModelAndView carrito() {
		ModelMap miMapa = new ModelMap();
		Carrito carrito = Carrito.getInstance();
		
		List<Producto> productos = carrito.verProductos();
		
		ModelAndView miVista = new ModelAndView();
		miVista.addAllObjects(miMapa);
		miVista.addObject("productos", productos);
		miVista.setViewName("carrito");
		return miVista;
	}
	
	@RequestMapping(value = "/cancelar", method = RequestMethod.GET)
	public String cancelar() {
		Carrito carrito = Carrito.getInstance();
		Stock stock = Stock.getInstance();
		List<Producto> productos = carrito.verProductos();
		for (Iterator<Producto> it = productos.iterator(); it.hasNext();) {
			Producto producto = it.next();
			stock.agregarStock(producto, 1);
		}
		carrito.vaciar();
		
		String url = "/";
		return "redirect:" + url;
	}
}