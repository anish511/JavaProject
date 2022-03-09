package dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Customer;


@Repository
public class CustomerDAOImpl implements CustomerDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCustomer(Customer customer) {
		sessionFactory.getCurrentSession().saveOrUpdate(customer);
	}
	
	@Override
	public void deleteCustomer(Integer customerid) {
		Customer customer = (Customer) sessionFactory.getCurrentSession().load(Customer.class, customerid);
		if(null != customer) {
			sessionFactory.getCurrentSession().delete(customer);
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<Customer> getAllCustomers(){
		List<Customer> listCustomer = sessionFactory.getCurrentSession().createQuery("from Customer").list();
		return listCustomer;
	}
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<Customer> checkEmail(String email){
		
		String sql = "SELECT * FROM Customer WHERE Email = :e_nm";
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(sql);
		query.addEntity(Customer.class);
		query.setParameter("e_nm", email);
		List <Customer> listCustomer = query.list();
		//List<Customer> listCustomer = sessionFactory.getCurrentSession().createQuery("from Customer where Email = email").list();
		
		return listCustomer;
	}
	
	public Customer getCustomer(int cusid) {
		return (Customer) sessionFactory.getCurrentSession().get(
				Customer.class, cusid);
	}
	
	@Override
	public Customer updateCustomer(Customer customer) {
		sessionFactory.getCurrentSession().update(customer);
		return customer;
	}
	
}
