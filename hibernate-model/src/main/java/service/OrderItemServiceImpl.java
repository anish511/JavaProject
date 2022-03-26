package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.OrderItemDAO;
import model.Order;
import model.OrderItem;

@Service
@Transactional
public class OrderItemServiceImpl implements OrderItemService{

	@Autowired
	private OrderItemDAO OrderItemDAO;
	
	@Override
	@Transactional
	public void addOrderItem(OrderItem OrderItem) {
		OrderItemDAO.addOrderItem(OrderItem);
	}
	
	@Override
	@Transactional
	public List<OrderItem> getAllOrderItems() {
		return OrderItemDAO.getAllOrderItems();
	}
	
	@Override
	@Transactional
	public List<OrderItem> getOrderItemByOrder(Order order) {
		return OrderItemDAO.getOrderItemByOrder(order);
	}
	
	@Override
	@Transactional
	public void deleteOrderItem(Integer OrderItemId) {
		OrderItemDAO.deleteOrderItem(OrderItemId);
	}
	
	
	@Override
	@Transactional
	public OrderItem getOrderItem(int OrderItemid) {
		return OrderItemDAO.getOrderItem(OrderItemid);
	}

	@Override
	@Transactional
	public OrderItem updateOrderItem(OrderItem OrderItem) {
		// TODO Auto-generated method stub
		return OrderItemDAO.updateOrderItem(OrderItem);
	}
}
