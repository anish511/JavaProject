package dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.OrderItem;

@Repository
public class OrderItemDAOImpl implements OrderItemDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addOrderItem(OrderItem orderItem) {
		sessionFactory.getCurrentSession().saveOrUpdate(orderItem);
	}
	
	@Override
	public void deleteOrderItem(Integer OrderItemid) {
		OrderItem OrderItem = (OrderItem) sessionFactory.getCurrentSession().load(OrderItem.class, OrderItemid);
		if(null != OrderItem) {
			sessionFactory.getCurrentSession().delete(OrderItem);
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<OrderItem> getAllOrderItems(){
		List<OrderItem> listOrderItem = sessionFactory.getCurrentSession().createQuery("from OrderItem").list();
		return listOrderItem;
	}
	
	public OrderItem getOrderItem(int OrderItemid) {
		return (OrderItem) sessionFactory.getCurrentSession().get(
				OrderItem.class, OrderItemid);
	}
	
	@Override
	public OrderItem updateOrderItem(OrderItem OrderItem) {
		sessionFactory.getCurrentSession().update(OrderItem);
		return OrderItem;
	}

}
