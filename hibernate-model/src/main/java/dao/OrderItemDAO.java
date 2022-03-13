package dao;

import java.util.List;

import model.OrderItem;

public interface OrderItemDAO {

    public void addOrderItem(OrderItem orderItem);
	
	public List<OrderItem> getAllOrderItems();
	
	public void deleteOrderItem(Integer orderItemId);

	public OrderItem updateOrderItem(OrderItem orderItem);

	public OrderItem getOrderItem(int orderItemId);
}
