package dao;

import java.util.List;

import model.Order;

public interface OrderDAO {

    public void addOrder(Order order);
	
	public List<Order> getAllOrders();
	
	public void deleteOrder(Integer orderId);

	public Order updateOrder(Order order);

	public Order getOrder(int orderid);
}
