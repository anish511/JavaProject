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

import model.Laptop;
import service.LaptopService;

@Controller
@RequestMapping(value = "/Laptop")
public class LaptopController {

	private static final Logger logger = Logger
			.getLogger(LaptopController.class);
	
	public LaptopController() {
		System.out.println("laptop Controller");
	}
	
	@Autowired
	private LaptopService laptopService;
	
	@RequestMapping(value="/")
	public ModelAndView listLaptop(ModelAndView model) {
		List<Laptop> listLaptop = laptopService.getAllLaptops();
		model.addObject("listLaptop",listLaptop);
		model.setViewName("Laptophome");
		return model;
	}
	
	@RequestMapping(value="/newLaptop",method = RequestMethod.GET)
	public ModelAndView newLaptop(ModelAndView model) {
		Laptop laptop = new Laptop();
		model.addObject(laptop);
		model.setViewName("LaptopForm");
		return model;
	}
	
	@RequestMapping(value="/saveLaptop", method= RequestMethod.POST)
	public ModelAndView saveLaptop(@ModelAttribute Laptop laptop) {
		if (laptop.getProductID() == 0) {
			laptopService.addLaptop(laptop);
		}
		else {
			laptopService.updateLaptop(laptop);
		}
		return new ModelAndView("redirect:/Laptop/");
	}
	
	@RequestMapping(value = "/deleteLaptop", method = RequestMethod.GET)
	public ModelAndView deleteLaptop(HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		laptopService.deleteLaptop(productId);
		return new ModelAndView("redirect:/Laptop/");
	}
	
	@RequestMapping(value = "/editLaptop", method = RequestMethod.GET)
	public ModelAndView editContact(HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		Laptop laptop = laptopService.getLaptop(productId);
		ModelAndView model = new ModelAndView("LaptopForm");
		model.addObject(laptop);
		model.setViewName("LaptopForm");
		return model;
	}
}
