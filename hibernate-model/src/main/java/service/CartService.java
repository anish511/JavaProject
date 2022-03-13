package service;

import java.util.List;

import model.Cart;
import model.Customer;

public interface CartService {

    public void addCart(Cart cart);
	
	public List<Cart> getAllCarts();
	
	public List<Cart> getCartByUser(Customer customer);
	
	public void deleteCart(Integer cartId);

	public Cart updateCart(Cart cart);

	public Cart getCart(int cartid);
}
