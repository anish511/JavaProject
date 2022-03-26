package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.Customer;
import service.CustomerService;

@Controller
@RequestMapping(value = "/Customer")
public class CustomerController {

	private static final Logger logger = Logger
			.getLogger(CustomerController.class);
	
	public CustomerController() {
		System.out.println("Customer Controller");
	}
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(value = "/")
	public ModelAndView listCustomer(ModelAndView model) throws IOException {
		
		model.setViewName("Customerhome");
		return model;
	}
	
	@RequestMapping(value = "/newCustomer", method = RequestMethod.GET)
	public ModelAndView newCustomer(ModelAndView model) {
		Customer customer = new Customer();
		model.addObject(customer);
		model.setViewName("CustomerForm");
		return model;
	}
	
	@RequestMapping(value = "/saveCustomer", method = RequestMethod.POST)
	public ModelAndView saveCustomer(@ModelAttribute Customer customer) {
		
		if (customer.getId() == 0) {
			List<Customer> listCustomer = customerService.checkEmail(customer.getEmail());
			if(!listCustomer.isEmpty()) {
				ModelAndView model = new ModelAndView("CustomerForm");
				model.addObject("message", "Oops... Email Already Exists");
				return model;
			}
			customerService.addCustomer(customer);
		}
		else {
			List<Customer> listCustomer = customerService.checkEmail(customer.getEmail());
			for(Customer c: listCustomer) {
				if(c.getId() != customer.getId()) {
					ModelAndView model = new ModelAndView("CustomerForm");
					model.addObject("message", "Oops... Email Already Exists");
					return model;
				}
			}
			customerService.updateCustomer(customer);
			ModelAndView model = new ModelAndView("CustomerForm");
			model.addObject(customer);
			model.addObject("message", "Successfully...Updated Profile");
			return model;
		}
		//customerService.addCustomer(customer);
		return new ModelAndView("CustomerLogin");
	}
	
	
//	@RequestMapping(value = "/CustomerLogin", method = RequestMethod.POST)
//	public ModelAndView CustomerLogin(HttpServletRequest request) {
//		int flag = 0;
//		List<Customer> listCustomer = customerService.checkEmail(request.getParameter("email"));
//		if(!listCustomer.isEmpty()) {
//			flag = 1;
//			ModelAndView model = new ModelAndView("Customerhome");
//			
//			for(Customer c: listCustomer) {
//				if(request.getParameter("password").equals(c.getPassword())) {
//					HttpSession session = request.getSession();
//					session.setAttribute("email", request.getParameter("email"));
//					session.setAttribute("role", c.getRole());
//					
//					if(c.getRole().equalsIgnoreCase("admin")) {
//						model.setViewName("Adminhome");
//					}
//					else {
//						model.setViewName("Customerhome");
//					}
//					
//					return model;
//				}
//			}
//			
//		}
//		
//		ModelAndView modell = new ModelAndView("CustomerLogin");
//		if(flag == 0) {
//		    modell.addObject("message","Email Incorrect...");
//		}
//		else {
//			modell.addObject("message","Password Incorrect...");
//		}
//		
//		return modell;
//	}
//	
//	@RequestMapping(value = "/CustomerLogin", method = RequestMethod.GET)
//	public ModelAndView Customerlogin() {
//		return new ModelAndView("CustomerLogin");
//	}
	
	@RequestMapping(value = "/deleteCustomer", method = RequestMethod.GET)
	public ModelAndView deleteCustomer(HttpServletRequest request) {
		int customerId = Integer.parseInt(request.getParameter("id"));
		customerService.deleteCustomer(customerId);
		return new ModelAndView("redirect:/Customer/");
	}

	@RequestMapping(value = "/editCustomer", method = RequestMethod.GET)
	public ModelAndView editContact(HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Customer> listCustomer = customerService.checkEmail((String)session.getAttribute("email"));
		ModelAndView model = new ModelAndView("UpdateCustomer");
		for(Customer c: listCustomer) {
			model.addObject(c);
			break;
		}
		
		model.setViewName("UpdateCustomer");
		return model;
	}
}
