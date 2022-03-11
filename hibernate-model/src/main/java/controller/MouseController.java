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

import model.Mouse;
import service.MouseService;

@Controller
@RequestMapping(value = "/Mouse")
public class MouseController {

	private static final Logger logger = Logger
			.getLogger(MouseController.class);
	
	public MouseController() {
		System.out.println("Mouse Controller");
	}
	
	@Autowired
	private MouseService mouseService;
	
	@RequestMapping(value="/")
	public ModelAndView listMouse(ModelAndView model) {
		List<Mouse> listMouse = mouseService.getAllMouses();
		model.addObject("listMouse",listMouse);
		model.setViewName("Mousehome");
		return model;
	}
	
	@RequestMapping(value="/newMouse",method = RequestMethod.GET)
	public ModelAndView newMouse(ModelAndView model) {
		Mouse mouse = new Mouse();
		model.addObject(mouse);
		model.setViewName("MouseForm");
		return model;
	}
	
	@RequestMapping(value="/saveMouse", method= RequestMethod.POST)
	public ModelAndView saveMouse(@ModelAttribute Mouse mouse) {
		if (mouse.getProductID() == 0) {
			mouseService.addMouse(mouse);
		}
		else {
			mouseService.updateMouse(mouse);
		}
		return new ModelAndView("redirect:/Mouse/");
	}
	
	@RequestMapping(value = "/deleteMouse", method = RequestMethod.GET)
	public ModelAndView deleteMouse(HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		mouseService.deleteMouse(productId);
		return new ModelAndView("redirect:/Mouse/");
	}
	
	@RequestMapping(value = "/editMouse", method = RequestMethod.GET)
	public ModelAndView editContact(HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		Mouse mouse = mouseService.getMouse(productId);
		ModelAndView model = new ModelAndView("MouseForm");
		model.addObject(mouse);
		model.setViewName("MouseForm");
		return model;
	}
}

