package tallerweb.supermercado.controladores;

import java.util.List;
import java.util.Set;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import tallerweb.supermercado.modelo.Carrito;
import tallerweb.supermercado.modelo.Producto;
import tallerweb.supermercado.modelo.Stock;

@Controller
public class inicioController {
	
	@ModelAttribute("producto")
	public Producto createModel() {
	    return new Producto();
	}
	
	@RequestMapping(value = "/agregarProducto", method = RequestMethod.GET)
	public ModelAndView agregarProducto() {
		ModelAndView miVista = new ModelAndView();
		miVista.setViewName("agregarProducto");
		return miVista;
	}

	@RequestMapping(value = "/agregar", method = RequestMethod.POST)
	public String formulario(@ModelAttribute("Producto") Producto p1) {
		Carrito carrito = Carrito.getInstance();
		Stock stock = Stock.getInstance();
		
		carrito.agregarProducto(p1);
		stock.agregarProducto(p1);
		
		String url = "/productos";
		return "redirect:" + url;
	}

	@RequestMapping(value = "/productos", method = RequestMethod.GET)
	public ModelAndView lista() {
		ModelMap miMapa = new ModelMap();
		Carrito carrito = Carrito.getInstance();

		List<Producto> productos = carrito.verProductos();

		ModelAndView miVista = new ModelAndView();
		miVista.addAllObjects(miMapa);
		miVista.addObject("productos", productos);
		miVista.setViewName("productos");
		return miVista;
	}
	
	@RequestMapping(value = "/agregarStock", method = RequestMethod.GET)
	public ModelAndView agregarStock() {
		ModelAndView miVista = new ModelAndView();
		miVista.setViewName("agregarStock");
		return miVista;
	}
	
	@RequestMapping(value = "/stock", method = RequestMethod.GET)
	public ModelAndView stock() {
		ModelMap miMapa = new ModelMap();
		Stock stock = Stock.getInstance();

		Set<Producto> stocks = stock.listarProductosDisponibles();

		ModelAndView miVista = new ModelAndView();
		miVista.addAllObjects(miMapa);
		miVista.addObject("stocks", stocks);
		miVista.setViewName("stock");
		return miVista;
	}
	
	
}