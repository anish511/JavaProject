package service;

import java.util.List;

import model.Customer;


public interface CustomerService {

	public void addCustomer(Customer customer);

	public List<Customer> getAllCustomers();
	
	public List<Customer> checkEmail(String email);

	public void deleteCustomer(Integer customerId);

	public Customer getCustomer(int customerid);

	public Customer updateCustomer(Customer customer);
}
