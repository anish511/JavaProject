package dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Laptop;

@Repository
public class LaptopDAOImpl implements LaptopDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addLaptop(Laptop laptop) {
		sessionFactory.getCurrentSession().saveOrUpdate(laptop);
	}
	
	@Override
	public void deleteLaptop(Integer laptopid) {
		Laptop laptop = (Laptop) sessionFactory.getCurrentSession().load(Laptop.class, laptopid);
		if(null != laptop) {
			sessionFactory.getCurrentSession().delete(laptop);
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<Laptop> getAllLaptops(){
		List<Laptop> listLaptop = sessionFactory.getCurrentSession().createQuery("from Laptop").list();
		return listLaptop;
	}
	
	
	public Laptop getLaptop(int lappyid) {
		return (Laptop) sessionFactory.getCurrentSession().get(
				Laptop.class, lappyid);
	}
	
	@Override
	public Laptop updateLaptop(Laptop laptop) {
		sessionFactory.getCurrentSession().update(laptop);
		return laptop;
	}

}
