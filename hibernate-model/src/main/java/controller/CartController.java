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
import model.Order;
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
	public ModelAndView showCart(ModelAndView model,HttpServletRequest request) {
		//List<Cart> listCart = cartService.getAllCarts();
		HttpSession session = request.getSession();
        List<Customer> listCustomer = customerService.checkEmail((String)session.getAttribute("email"));

        // First get cart items of customer
        List<Cart> listCart = null;
		for(Customer c: listCustomer) {
			listCart = cartService.getCartByUser(c);
			break;
		}
		
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
		
		List<Cart> listCart = cartService.getCartByUser(cart.getCustomer());
		
		for(Cart cart1 : listCart) {
			Product p = cart1.getProduct();
			if(p.getProductID() == productID) {
				int finalquantity = cart1.getQuantity() + quantity; 
				cart1.setQuantity(finalquantity);
				cart1.setTotalPrice(finalquantity*p.getPrice());
				cartService.updateCart(cart1);
				ModelAndView model = new ModelAndView("redirect:/myCart");;
				return model;
			}
		}
		
		cart.setProduct(product);
		cart.setQuantity(quantity);
		cart.setTotalPrice(quantity*price);
		
		cartService.addCart(cart);
		
		ModelAndView model = new ModelAndView("redirect:/myCart");;
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
		int cartId = Integer.parseInt(request.getParameter("cartId"));
		cartService.deleteCart(cartId);
		return new ModelAndView("redirect:/myCart");
	}
	
	@RequestMapping(value = "/updateCart")
	public ModelAndView updateCart(HttpServletRequest request) {
		int cartId = Integer.parseInt(request.getParameter("cartId"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		Cart cart = cartService.getCart(cartId);
		Product p = cart.getProduct();
		cart.setQuantity(quantity);
		cart.setTotalPrice(quantity*p.getPrice());
		cartService.updateCart(cart);
		return new ModelAndView("redirect:/myCart");
	}
	
	@RequestMapping(value = "/deleteAllCart")
	public ModelAndView deleteAllCart(HttpServletRequest request) {
		HttpSession session = request.getSession();
        List<Customer> listCustomer = customerService.checkEmail((String)session.getAttribute("email"));
        
        // First get cart items of customer
        List<Cart> listCart = null;
		for(Customer c: listCustomer) {
			listCart = cartService.getCartByUser(c);
			break;
		}
		
		
		// Get total Cost
		for(Cart c: listCart) {
			cartService.deleteCart(c.getCartId());
		}
		
		ModelAndView model = new ModelAndView("redirect:/myCart");
		model.addObject("listCart", listCart);
		
		return model;
	}
}
