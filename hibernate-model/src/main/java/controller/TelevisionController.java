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

import model.Television;
import service.TelevisionService;

@Controller
@RequestMapping(value = "/Television")
public class TelevisionController {

	private static final Logger logger = Logger
			.getLogger(TelevisionController.class);
	
	public TelevisionController() {
		System.out.println("Television Controller");
	}
	
	@Autowired
	private TelevisionService televisionService;
	
	@RequestMapping(value="/")
	public ModelAndView listTelevision(ModelAndView model) {
		List<Television> listTelevision = televisionService.getAllTelevisions();
		model.addObject("listTelevision",listTelevision);
		model.setViewName("Televisionhome");
		return model;
	}
	
	@RequestMapping(value="/newTelevision",method = RequestMethod.GET)
	public ModelAndView newTelevision(ModelAndView model) {
		Television Television = new Television();
		model.addObject(Television);
		model.setViewName("TelevisionForm");
		return model;
	}
	
	@RequestMapping(value="/saveTelevision", method= RequestMethod.POST)
	public ModelAndView saveTelevision(@ModelAttribute Television television) {
		if (television.getProductID() == 0) {
			televisionService.addTelevision(television);
		}
		else {
			televisionService.updateTelevision(television);
		}
		return new ModelAndView("redirect:/Television/");
	}
	
	@RequestMapping(value = "/deleteTelevision", method = RequestMethod.GET)
	public ModelAndView deleteTelevision(HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		televisionService.deleteTelevision(productId);
		return new ModelAndView("redirect:/Television/");
	}
	
	@RequestMapping(value = "/editTelevision", method = RequestMethod.GET)
	public ModelAndView editContact(HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		Television television = televisionService.getTelevision(productId);
		ModelAndView model = new ModelAndView("TelevisionForm");
		model.addObject(television);
		model.setViewName("TelevisionForm");
		return model;
	}
}
