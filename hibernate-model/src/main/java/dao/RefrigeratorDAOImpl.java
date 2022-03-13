package dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Refrigerator;

@Repository
public class RefrigeratorDAOImpl implements RefrigeratorDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void deleteRefrigerator(Integer refrigeratorId) {
		Refrigerator refrigerator = (Refrigerator) sessionFactory.getCurrentSession().load(Refrigerator.class, refrigeratorId);
		
		if(null != refrigerator) {
			sessionFactory.getCurrentSession().delete(refrigerator);		
		}
	}

	@Override
	public void addRefrigerator(Refrigerator refrigerator) {
		sessionFactory.getCurrentSession().saveOrUpdate(refrigerator);		
	}

	@SuppressWarnings("unchecked")
	public List<Refrigerator> getAllRefrigerators() {
		List<Refrigerator> listRefrigerator = sessionFactory.getCurrentSession().createQuery("from Refrigerator").list();
		return listRefrigerator;
	}

	@Override
	public Refrigerator updateRefrigerator(Refrigerator refrigerator) {
		sessionFactory.getCurrentSession().update(refrigerator);
		return refrigerator;
	}

	@Override
	public Refrigerator getRefrigerator(int productid) {
		return (Refrigerator) sessionFactory.getCurrentSession().get(Refrigerator.class, productid);
	}

}
