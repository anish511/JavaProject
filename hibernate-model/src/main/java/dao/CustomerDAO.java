package dao;

import java.util.List;

import model.Customer;

public interface CustomerDAO {
	public void addCustomer(Customer customer);

	public List<Customer> getAllCustomers();
	
	public List<Customer> checkEmail(String email);

	public void deleteCustomer(Integer customerId);

	public Customer updateCustomer(Customer customer);

	public Customer getCustomer(int customerid);
}
