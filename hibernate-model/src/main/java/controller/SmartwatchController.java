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

import model.Smartwatch;
import service.SmartwatchService;

@Controller
@RequestMapping(value = "/Smartwatch")
public class SmartwatchController {
	
	private static final Logger logger = Logger
			.getLogger(SmartwatchController.class);
	
	public SmartwatchController() {
		System.out.println("Smartwatch controller");
	}
	
	@Autowired
	private SmartwatchService smartwatchService;
	
	@RequestMapping(value="/")
	public ModelAndView listSmartwatch(ModelAndView model) {
		List<Smartwatch> listSmartwatch = smartwatchService.getAllSmartwatches();
		model.addObject("listSmartwatch",listSmartwatch);
		model.setViewName("Smartwatchhome");
		return model;
	}
	
	@RequestMapping(value="/newSmartwatch",method = RequestMethod.GET)
	public ModelAndView newSmartwatch(ModelAndView model) {
		Smartwatch smartwatch = new Smartwatch();
		model.addObject(smartwatch);
		model.setViewName("SmartwatchForm");
		return model;
	}
	
	@RequestMapping(value="/saveSmartwatch", method= RequestMethod.POST)
	public ModelAndView saveSmartwatch(@ModelAttribute Smartwatch smartwatch) {
		if (smartwatch.getProductID() == 0) {
			smartwatchService.addSmartwatch(smartwatch);
		}
		else {
			smartwatchService.updateSmartwatch(smartwatch);
		}
		return new ModelAndView("redirect:/Smartwatch/");
	}
	
	@RequestMapping(value = "/deleteSmartwatch", method = RequestMethod.GET)
	public ModelAndView deleteSmartwatch(HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		smartwatchService.deleteSmartwatch(productId);
		return new ModelAndView("redirect:/Smartwatch/");
	}
	
	@RequestMapping(value = "/editSmartwatch", method = RequestMethod.GET)
	public ModelAndView editSmartwatch(HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		Smartwatch smartwatch = smartwatchService.getSmartwatch(productId);
		ModelAndView model = new ModelAndView("SmartwatchForm");
		model.addObject(smartwatch);
		model.setViewName("SmartwatchForm");
		return model;
	}
}
