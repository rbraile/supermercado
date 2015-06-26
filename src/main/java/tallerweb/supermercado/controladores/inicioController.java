package tallerweb.supermercado.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class inicioController {
//	@RequestMapping(value = "/formulario", method = RequestMethod.GET)
//	public ModelAndView formulario() {
//		ModelAndView miVista = new ModelAndView();
//		miVista.setViewName("formulario");
//		return miVista;
//	}
//	
//	@RequestMapping(value = "/formulario2", method = RequestMethod.POST)
//	public String formulario2(@ModelAttribute("Persona")Persona p3) {		
//		TablaPersonas tabla = TablaPersonas.getInstance();
//		tabla.crearPersona(p3);
//		String url = "/lista";		
//		return "redirect:" + url;
//	}
}