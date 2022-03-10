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

import model.Phone;
import service.PhoneService;

@Controller
@RequestMapping(value = "/Phone")
public class PhoneController {

	private static final Logger logger = Logger
			.getLogger(PhoneController.class);
	
	public PhoneController() {
		System.out.println("Phone Controller");
	}
	
	@Autowired
	private PhoneService phoneService;
	
	@RequestMapping(value="/")
	public ModelAndView listPhone(ModelAndView model) {
		List<Phone> listPhone = phoneService.getAllPhones();
		model.addObject("listPhone",listPhone);
		model.setViewName("Phonehome");
		return model;
	}
	
	@RequestMapping(value="/newPhone",method = RequestMethod.GET)
	public ModelAndView newPhone(ModelAndView model) {
		Phone phone = new Phone();
		model.addObject(phone);
		model.setViewName("PhoneForm");
		return model;
	}
	
	@RequestMapping(value="/savePhone", method= RequestMethod.POST)
	public ModelAndView savePhone(@ModelAttribute Phone phone) {
		if (phone.getProductID() == 0) {
			phoneService.addPhone(phone);
		}
		else {
			phoneService.updatePhone(phone);
		}
		return new ModelAndView("redirect:/Phone/");
	}
	
	@RequestMapping(value = "/deletePhone", method = RequestMethod.GET)
	public ModelAndView deletePhone(HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		phoneService.deletePhone(productId);
		return new ModelAndView("redirect:/Phone/");
	}
	
	@RequestMapping(value = "/editPhone", method = RequestMethod.GET)
	public ModelAndView editContact(HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		Phone phone = phoneService.getPhone(productId);
		ModelAndView model = new ModelAndView("PhoneForm");
		model.addObject(phone);
		model.setViewName("PhoneForm");
		return model;
	}
}
