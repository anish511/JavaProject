package dao;

import model.Product;

public interface ProductDAO {

	public Product getProduct(int productID);
	public Product updateProduct(Product product);
}
