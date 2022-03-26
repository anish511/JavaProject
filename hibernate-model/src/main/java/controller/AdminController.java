package controller;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.Customer;
import service.CustomerService;

@Controller
@RequestMapping(value = "/Admin")
public class AdminController {

	private static final Logger logger = Logger
			.getLogger(AdminController.class);
	
	public AdminController() {
		System.out.println("Admin Controller");
	}
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(value="/")
	public ModelAndView home(ModelAndView model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.setAttribute("role", "admin");
		model.setViewName("Adminhome");
		return model;
	}
	
	@RequestMapping(value="/showCustomer")
	public ModelAndView showCustomer(ModelAndView model) {
		List<Customer> listCustomer = customerService.getAllCustomers();
		model.addObject("listCustomer",listCustomer);
		model.setViewName("CustomerList");
		return model;
	}
	
}
