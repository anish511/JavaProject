package controller;

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

import model.Cart;
import model.Customer;
import model.Product;
import service.CartService;
import service.CustomerService;
import service.ProductService;

@Controller
public class CartController {

	private static final Logger logger = Logger
			.getLogger(CartController.class);
	
	public CartController() {
		System.out.println("Cart Controller");
	}
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(value = "/myCart")
	public ModelAndView showCart(ModelAndView model) {
		List<Cart> listCart = cartService.getAllCarts();
		model.addObject("listCart",listCart);
		model.setViewName("Carthome");
		return model;
	}
	
	@RequestMapping(value = "/addToCart")
	public ModelAndView addCart(HttpServletRequest request) {
		int productID = Integer.parseInt(request.getParameter("productID"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		
		HttpSession session = request.getSession();
		
		Product product = productService.getProduct(productID);
		
	    int originalQuantity = product.getQuantity();
	    
	    if(originalQuantity < quantity) {
	    	ModelAndView model = new ModelAndView("Customerhome");
	    	model.addObject("message","Only "+originalQuantity+" Quantity are available");
	    	return model;
	    }
		
	    double price = product.getPrice();
		List<Customer> listCustomer = customerService.checkEmail((String)session.getAttribute("email"));
		
		Cart cart = new Cart();
		
		for(Customer c: listCustomer) {
			cart.setCustomer(c);
			break;
		}
		
		cart.setProduct(product);
		cart.setQuantity(quantity);
		cart.setTotalPrice(quantity*price);
		
		cartService.addCart(cart);
		
		ModelAndView model = new ModelAndView("Customerhome");
		return model;
	}
	
	@RequestMapping(value = "/editCart")
	public ModelAndView editCart(HttpServletRequest request) {
		int cartId = Integer.parseInt(request.getParameter("id"));
		Cart cart = cartService.getCart(cartId);
		ModelAndView model = new ModelAndView("cartForm");
		model.addObject(cart);
		model.setViewName("CartForm");
		return model;
	}
	
	@RequestMapping(value = "/deleteCart", method = RequestMethod.GET)
	public ModelAndView deleteCart(HttpServletRequest request) {
		int cartId = Integer.parseInt(request.getParameter("id"));
		cartService.deleteCart(cartId);
		return new ModelAndView("redirect:/myCart");
	}
	
	@RequestMapping(value = "/updateCart")
	public ModelAndView updateCart(HttpServletRequest request) {
		int cartId = Integer.parseInt(request.getParameter("cartId"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		Cart cart = cartService.getCart(cartId);
		cart.setQuantity(quantity);
		cartService.updateCart(cart);
		return new ModelAndView("redirect:/myCart");
	}
}
