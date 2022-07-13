package controller;

import java.io.IOException;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.Customer;
import model.JavaEmail;
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
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public ModelAndView about() {
		return new ModelAndView("about");
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView contact() {
		return new ModelAndView("contact");
	}
	
	@RequestMapping(value = "/email")
	public ModelAndView contact(@RequestParam("name") String username, @RequestParam("email") String email,@RequestParam("message") String message, HttpServletRequest request) throws IOException, AddressException, MessagingException {
	    
		String namestr = "<h3 style='display: inline'>Username: " + username + "<h3>";
		String emailstr = "<h3 style='display: inline'>Email: " + email + "<h3>";
		String msgstr = "<h3 style='display: inline'>Message: " + message + "<h3>";
		String subject = "Feedback For Electronics Ecommerce Website";
		String body = namestr + emailstr + msgstr;
        JavaEmail javaEmail = new JavaEmail();
        javaEmail.setMailServerProperties();
        String to[] = { "girianish2711@gmail.com" };
        javaEmail.draftEmailMessage(to, subject, body);
        javaEmail.sendEmail(to, subject, body);
        ModelAndView model = new ModelAndView("contact");
        model.addObject("alert", "We received your valuable feedback");
        return model;
	}
	
	@RequestMapping(value = "/footer", method = RequestMethod.GET)
	public ModelAndView sample() {
		return new ModelAndView("Footer");
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
	
	@RequestMapping(value = "/ForgetPassword", method = RequestMethod.GET)
	public ModelAndView forgetPassword() {
		return new ModelAndView("ForgetPassword");
	}
	
	@RequestMapping(value = "/ForgetPassword", method = RequestMethod.POST)
	public ModelAndView sendEmail(HttpServletRequest request) throws IOException, AddressException, MessagingException {
		
		String email = request.getParameter("email");
		System.out.println(email);
		List<Customer> listCustomer = customerService.checkEmail(request.getParameter("email"));
		
		if(listCustomer.isEmpty()) {
			ModelAndView model = new ModelAndView("ForgetPassword");
	        model.addObject("alert", "Please Provide a Valid Email...");
	        return model;
		}
		else {
			int id = listCustomer.get(0).getId();
			String msgstr = "<h3 style='display: inline'>Click to change password: " + "http://localhost:8080/hibernate-model/updatePassword?id=" + id + "<h3>";
			String subject = "Change Password For Electronics Ecommerce Website";
			String body =   msgstr;
	        JavaEmail javaEmail = new JavaEmail();
	        javaEmail.setMailServerProperties();
	        String to[] = { email };
	        javaEmail.draftEmailMessage(to, subject, body);
	        javaEmail.sendEmail(to, subject, body);
		}
        ModelAndView model = new ModelAndView("ForgetPassword");
        model.addObject("alert", "Please Check Your Email And Follow the Link...");
        return model;
        
	}
	
	@RequestMapping(value = "updatePassword",method = RequestMethod.GET)
	public ModelAndView updatePassword(@RequestParam("id") int id) {
		ModelAndView model = new ModelAndView("updatePassword");
		Integer id1 = Integer.valueOf(id);
		model.addObject("id", id1);
		return model;
	}
	
	@RequestMapping(value = "updatePassword",method = RequestMethod.POST)
	public ModelAndView updatePassword(@RequestParam("id") String id,HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView("CustomerLogin");
		
		Customer customer = customerService.getCustomer(Integer.parseInt(id));
		customer.setPassword(request.getParameter("conPassword"));
		customerService.updateCustomer(customer);
		return model;
	}
	
	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return new ModelAndView("CustomerLogin");
	}
}
