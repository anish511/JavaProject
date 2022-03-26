package service;

import java.util.List;

import model.Customer;
import model.Order;

public interface OrderService {

	 public void addOrder(Order order);
		
		public List<Order> getAllOrders();
		
		public List<Order> getOrderByUser(Customer customer);
		
		public void deleteOrder(Integer orderId);

		public Order updateOrder(Order order);

		public Order getOrder(int orderId);
}
