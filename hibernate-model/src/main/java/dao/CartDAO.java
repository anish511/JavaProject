package dao;

import java.util.List;

import model.Cart;

public interface CartDAO {

	public void addCart(Cart cart);
	
	public List<Cart> getAllCarts();
	
	public void deleteCart(Integer cartId);

	public Cart updateCart(Cart cart);

	public Cart getCart(int cartid);
}
