package service;

import java.util.List;

import model.Order;
import model.OrderItem;

public interface OrderItemService {

public void addOrderItem(OrderItem OrderItem);
	
	public List<OrderItem> getAllOrderItems();
	
	public List<OrderItem> getOrderItemByOrder(Order order);
	
	public void deleteOrderItem(Integer OrderItemId);

	public OrderItem updateOrderItem(OrderItem OrderItem);

	public OrderItem getOrderItem(int OrderItemid);
}
