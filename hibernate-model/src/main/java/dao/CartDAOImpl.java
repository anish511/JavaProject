package dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Cart;

@Repository
public class CartDAOImpl implements CartDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCart(Cart cart) {
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
	}
	
	@Override
	public void deleteCart(Integer cartid) {
		Cart cart = (Cart) sessionFactory.getCurrentSession().load(Cart.class, cartid);
		if(null != cart) {
			sessionFactory.getCurrentSession().delete(cart);
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<Cart> getAllCarts(){
		List<Cart> listCart = sessionFactory.getCurrentSession().createQuery("from Cart").list();
		return listCart;
	}
	
	public Cart getCart(int cartid) {
		return (Cart) sessionFactory.getCurrentSession().get(
				Cart.class, cartid);
	}
	
	@Override
	public Cart updateCart(Cart cart) {
		sessionFactory.getCurrentSession().update(cart);
		return cart;
	}
}
