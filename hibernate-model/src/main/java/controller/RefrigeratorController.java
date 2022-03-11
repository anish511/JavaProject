package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.Refrigerator;
import service.RefrigeratorService;

@Controller
@RequestMapping(value = "/Refrigerator")
public class RefrigeratorController {
	private static final Logger logger = Logger
			.getLogger(TelevisionController.class);
	
	public RefrigeratorController() {
		System.out.println("Refrigerator Controller");
	}
	
	@Autowired
	private RefrigeratorService refrigeratorService;
	
	@RequestMapping(value="/")
	public ModelAndView listRefrigerator(ModelAndView model) {
		List<Refrigerator> listRefrigerator= refrigeratorService.getAllRefrigerators();
		model.addObject("listRefrigerator",listRefrigerator);
		model.setViewName("Refrigeratorhome");
		return model;
	}
	
	@RequestMapping(value="/newRefrigerator",method = RequestMethod.GET)
	public ModelAndView newTelevision(ModelAndView model) {
		Refrigerator Refrigerator = new Refrigerator();
		model.addObject(Refrigerator);
		model.setViewName("RefrigeratorForm");
		return model;
	}
	
	@RequestMapping(value="/saveRefrigerator", method= RequestMethod.POST)
	public ModelAndView saveRefrigerator(@ModelAttribute Refrigerator refrigerator) {
		if (refrigerator.getProductID() == 0) {
			refrigeratorService.addRefrigerator(refrigerator);
		}
		else {
			refrigeratorService.updateRefrigerator(refrigerator);
		}
		return new ModelAndView("redirect:/Refrigerator/");
	}
	
	@RequestMapping(value = "/deleteRefrigerator", method = RequestMethod.GET)
	public ModelAndView deleteRefrigerator(HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		refrigeratorService.deleteRefrigerator(productId);
		return new ModelAndView("redirect:/Refrigerator/");
	}
	
	@RequestMapping(value = "/editRefrigerator", method = RequestMethod.GET)
	public ModelAndView editContact(HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		Refrigerator refrigerator = refrigeratorService.getRefrigerator(productId);
		ModelAndView model = new ModelAndView("RefrigeratorForm");
		model.addObject(refrigerator);
		model.setViewName("RefrigeratorForm");
		return model;
	}
}
