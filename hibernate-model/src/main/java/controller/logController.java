package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.Customer;
import service.CustomerService;

@Controller
public class logController {

	private static final Logger logger = Logger
			.getLogger(logController.class);
	
	public logController() {
		System.out.println("Log Controller");
	}
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public ModelAndView CustomerLogin(HttpServletRequest request) {
		int flag = 0;
		List<Customer> listCustomer = customerService.checkEmail(request.getParameter("email"));
		if(!listCustomer.isEmpty()) {
			flag = 1;
			ModelAndView model = new ModelAndView("Customerhome");
			
			for(Customer c: listCustomer) {
				if(request.getParameter("password").equals(c.getPassword())) {
					HttpSession session = request.getSession();
					session.setAttribute("email", request.getParameter("email"));
					session.setAttribute("firstname", c.getFirstName());
					session.setAttribute("role", c.getRole());
					
					if(c.getRole().equalsIgnoreCase("admin")) {
						model.setViewName("Adminhome");
					}
					else {
						model.setViewName("Customerhome");
					}
					
					return model;
				}
			}
			
		}
		
		ModelAndView modell = new ModelAndView("CustomerLogin");
		if(flag == 0) {
		    modell.addObject("message","Email Incorrect...");
		}
		else {
			modell.addObject("message","Password Incorrect...");
		}
		
		return modell;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView Customerlogin() {
		return new ModelAndView("CustomerLogin");
	}
	
	@RequestMapping(value = "/Home", method = RequestMethod.GET)
	public ModelAndView home(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ModelAndView model = new ModelAndView("CustomerLogin");
		if(session.getAttribute("role").equals("admin")) {
			model.setViewName("Adminhome");
		}
		else {
			model.setViewName("Customerhome");
		}
		
		return model;
	}
	
	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return new ModelAndView("CustomerLogin");
	}
}
