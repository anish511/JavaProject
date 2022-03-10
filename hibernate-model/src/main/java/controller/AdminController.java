package controller;

import org.jboss.logging.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/Admin")
public class AdminController {

	private static final Logger logger = Logger
			.getLogger(AdminController.class);
	
	public AdminController() {
		System.out.println("Admin Controller");
	}
	
	@RequestMapping(value="/")
	public ModelAndView home(ModelAndView model) {
		model.setViewName("Adminhome");
		return model;
	}
	
}
