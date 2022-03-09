package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.CustomerDAO;
import model.Customer;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerDAO CustomerDAO;

	@Override
	@Transactional
	public void addCustomer(Customer customer) {
		CustomerDAO.addCustomer(customer);
	}

	@Override
	@Transactional
	public List<Customer> getAllCustomers() {
		return CustomerDAO.getAllCustomers();
	}
	
	@Override
	@Transactional
	public List<Customer> checkEmail(String email) {
		return CustomerDAO.checkEmail(email);
	}

	@Override
	@Transactional
	public void deleteCustomer(Integer customerId) {
		CustomerDAO.deleteCustomer(customerId);
	}
	
	
	@Override
	@Transactional
	public Customer getCustomer(int cusid) {
		return CustomerDAO.getCustomer(cusid);
	}

	@Override
	@Transactional
	public Customer updateCustomer(Customer customer) {
		// TODO Auto-generated method stub
		return CustomerDAO.updateCustomer(customer);
	}
}
