package controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.Cart;
import model.Customer;
import model.Order;
import model.OrderItem;
import model.Product;
import service.CartService;
import service.CustomerService;
import service.OrderItemService;
import service.OrderService;
import service.ProductService;

@Controller
public class OrderController {

	private static final Logger logger = Logger
			.getLogger(OrderController.class);
	
	public OrderController() {
		System.out.println("Order Controller");
	}
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private OrderItemService orderItemService;
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value = "/orderProduct")
	public ModelAndView orderProduct(HttpServletRequest request) {
		int productID = Integer.parseInt(request.getParameter("productID"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String shippingAddress = request.getParameter("shippingAddress");
		String type = request.getParameter("type");
		
		if(type.equalsIgnoreCase("Product")) {
			HttpSession session = request.getSession();
			
			Product product = productService.getProduct(productID);
			
		    int originalQuantity = product.getQuantity();
		    
		    if(originalQuantity < quantity) {
		    	ModelAndView model = new ModelAndView("Customerhome");
		    	model.addObject("message","Only "+originalQuantity+" Quantity are available");
		    	return model;
		    }
			
		    product.setQuantity(originalQuantity-quantity);
		    
		    productService.updateProduct(product);
		    
		    double price = product.getPrice();
			List<Customer> listCustomer = customerService.checkEmail((String)session.getAttribute("email"));
			
			Order order = new Order();
			
			for(Customer c: listCustomer) {
				order.setCustomer(c);
				break;
			}
			
			order.setOrderCost(quantity*price);
			order.setShippingAddress(shippingAddress);
			
			LocalDate localDate = LocalDate.now();
			order.setOrderDate(localDate.toString());
			
			orderService.addOrder(order);
			
			OrderItem orderItem = new OrderItem();
			orderItem.setOrder(order);
			orderItem.setProduct(product);
			orderItem.setQuantity(quantity);
			orderItem.setTotalPrice(price*quantity);
			
			orderItemService.addOrderItem(orderItem);
			
			List<OrderItem> listOrderItem = new ArrayList<OrderItem>();
			listOrderItem.add(orderItem);
			
			ModelAndView model = new ModelAndView("OrderComplete");
			model.addObject("order", order);
			model.addObject("listOrderItem", listOrderItem);
			return model;
		}
		else if(type.equalsIgnoreCase("Cart")) {
			HttpSession session = request.getSession();
	        List<Customer> listCustomer = customerService.checkEmail((String)session.getAttribute("email"));
			Order order = new Order();
	        
	        // First get cart items of customer
	        List<Cart> listCart = null;
			for(Customer c: listCustomer) {
				listCart = cartService.getCartByUser(c);
				order.setCustomer(c);
				break;
			}
			
			order.setShippingAddress(shippingAddress);
			double totalCost = 0;
			
			// Get total Cost
			for(Cart c: listCart) {
				totalCost = totalCost + c.getTotalPrice();
			}
			
			order.setOrderCost(totalCost);
			LocalDate localDate = LocalDate.now();
			order.setOrderDate(localDate.toString());
			orderService.addOrder(order);
			List<OrderItem> listOrderItem = new ArrayList<OrderItem>();
			// Save Cart items in Order items
			for(Cart c: listCart) {
				
				Product product = c.getProduct();
			    int originalQuantity = product.getQuantity();
			    
			    product.setQuantity(originalQuantity-c.getQuantity());
			    productService.updateProduct(product);
				
				OrderItem orderItem = new OrderItem();
				orderItem.setOrder(order);
				orderItem.setQuantity(c.getQuantity());
				orderItem.setTotalPrice(c.getTotalPrice());
				orderItem.setProduct(c.getProduct());
				orderItemService.addOrderItem(orderItem);
				cartService.deleteCart(c.getCartId());
				listOrderItem.add(orderItem);
			}
			
			ModelAndView model = new ModelAndView("OrderComplete");
			model.addObject("order", order);
			model.addObject("listOrderItem", listOrderItem);
			return model;
		}
		
		ModelAndView model = new ModelAndView("Customerhome");
		return model;
	}
	
	
	
	@RequestMapping(value = "/showOrder")
	public ModelAndView showOrder(ModelAndView model,HttpServletRequest request) {
		
		List<Order> orderList = null;
		HttpSession session = request.getSession();
        List<Customer> listCustomer = customerService.checkEmail((String)session.getAttribute("email"));
		
        for(Customer c: listCustomer) {
			orderList = orderService.getOrderByUser(c);
			break;
		}
        
        List<OrderItem> listOrderItem = null;
        Map<Order, List<OrderItem>> hm = new HashMap<Order, List<OrderItem>>();
        
        for(Order order: orderList) {
        	listOrderItem = orderItemService.getOrderItemByOrder(order);
        	hm.put(order,listOrderItem);
        }
        
        model.addObject("Order",hm);
        model.setViewName("Orderhome");
        return model;
	}
	
	@RequestMapping(value = "/paymentProduct")
	public ModelAndView payment(HttpServletRequest request) {
		
		int productID = Integer.parseInt(request.getParameter("productID"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String shippingAddress = request.getParameter("shippingAddress");
		
		HttpSession session = request.getSession();
		
		Product product = productService.getProduct(productID);
		
	    int originalQuantity = product.getQuantity();
	    
	    if(originalQuantity < quantity) {
	    	ModelAndView model = new ModelAndView("Customerhome");
	    	model.addObject("message","Only "+originalQuantity+" Quantity are available");
	    	return model;
	    }
		
	    //product.setQuantity(originalQuantity-quantity);
	    
	    //productService.updateProduct(product);
	    
	    double price = product.getPrice();
		List<Customer> listCustomer = customerService.checkEmail((String)session.getAttribute("email"));
		
		Order order = new Order();
		
		for(Customer c: listCustomer) {
			order.setCustomer(c);
			break;
		}
		
		order.setOrderCost(quantity*price);
		order.setShippingAddress(shippingAddress);
		
		LocalDate localDate = LocalDate.now();
		order.setOrderDate(localDate.toString());
		
		//orderService.addOrder(order);
		
		
		OrderItem orderItem = new OrderItem();
		orderItem.setOrder(order);
		orderItem.setProduct(product);
		orderItem.setQuantity(quantity);
		orderItem.setTotalPrice(price*quantity);
		
		//orderItemService.addOrderItem(orderItem);
		List<OrderItem> listOrderItem = new ArrayList<OrderItem>();
		listOrderItem.add(orderItem);
		
		ModelAndView model = new ModelAndView("payment");
		model.addObject("order", order);
		model.addObject("listOrderItem", listOrderItem);
		model.addObject("type", "product");
		return model;
	}

	@RequestMapping(value = "/paymentCart")
	public ModelAndView paymentCart(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String shippingAddress = request.getParameter("shippingAddress");
        List<Customer> listCustomer = customerService.checkEmail((String)session.getAttribute("email"));
		Order order = new Order();
        
        // First get cart items of customer
        List<Cart> listCart = null;
		for(Customer c: listCustomer) {
			listCart = cartService.getCartByUser(c);
			order.setCustomer(c);
			break;
		}
		
		order.setShippingAddress(shippingAddress);
		double totalCost = 0;
		
		// Get total Cost
		for(Cart c: listCart) {
			totalCost = totalCost + c.getTotalPrice();
		}
		
		order.setOrderCost(totalCost);
		LocalDate localDate = LocalDate.now();
		order.setOrderDate(localDate.toString());
		//orderService.addOrder(order);
		
		List<OrderItem> listOrderItem = new ArrayList<OrderItem>();
		// Save Cart items in Order items
		for(Cart c: listCart) {
			
			Product product = c.getProduct();
		    int originalQuantity = product.getQuantity();
		    
		    product.setQuantity(originalQuantity-c.getQuantity());
		    //productService.updateProduct(product);
			
			OrderItem orderItem = new OrderItem();
			orderItem.setOrder(order);
			orderItem.setQuantity(c.getQuantity());
			orderItem.setTotalPrice(c.getTotalPrice());
			orderItem.setProduct(c.getProduct());
			//orderItemService.addOrderItem(orderItem);
			//cartService.deleteCart(c.getCartId());
			
			listOrderItem.add(orderItem);
			
		}
		
		ModelAndView model = new ModelAndView("payment");
		model.addObject("order", order);
		model.addObject("listOrderItem", listOrderItem);
		model.addObject("type", "cart");
		return model;
	}
	
	@RequestMapping(value = "/invoice")
	public ModelAndView invoice(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("OrderComplete");
		return model;
	}
	
}
