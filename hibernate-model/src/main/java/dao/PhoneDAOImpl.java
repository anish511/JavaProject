package dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Phone;

@Repository
public class PhoneDAOImpl implements PhoneDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addPhone(Phone phone) {
		sessionFactory.getCurrentSession().saveOrUpdate(phone);
	}
	
	@Override
	public void deletePhone(Integer phoneid) {
		Phone phone = (Phone) sessionFactory.getCurrentSession().load(Phone.class, phoneid);
		if(null != phone) {
			sessionFactory.getCurrentSession().delete(phone);
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<Phone> getAllPhones(){
		List<Phone> listPhone = sessionFactory.getCurrentSession().createQuery("from Phone").list();
		return listPhone;
	}
	
	
	public Phone getPhone(int productid) {
		return (Phone) sessionFactory.getCurrentSession().get(
				Phone.class, productid);
	}
	
	@Override
	public Phone updatePhone(Phone phone) {
		sessionFactory.getCurrentSession().update(phone);
		return phone;
	}

}
