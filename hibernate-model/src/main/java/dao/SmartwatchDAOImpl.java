package dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Smartwatch;

@Repository
public class SmartwatchDAOImpl implements SmartwatchDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void addSmartwatch(Smartwatch smartwatch) {
		sessionFactory.getCurrentSession().saveOrUpdate(smartwatch);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Smartwatch> getAllSmartwatches() {
		List<Smartwatch> listSmartwatch = sessionFactory.getCurrentSession().createQuery("from Smartwatch").list();
		return listSmartwatch;
	}

	@Override
	public void deleteSmartwatch(Integer smartwatchId) {
		Smartwatch smartwatch = sessionFactory.getCurrentSession().load(Smartwatch.class, smartwatchId);
		if(null != smartwatch) {
			sessionFactory.getCurrentSession().delete(smartwatch);
		}
	}

	@Override
	public Smartwatch updateSmartwatch(Smartwatch smartwatch) {
		sessionFactory.getCurrentSession().update(smartwatch);
		return smartwatch;
	}

	@Override
	public Smartwatch getSmartwatch(int smartwatchId) {
		return (Smartwatch) sessionFactory.getCurrentSession().get(Smartwatch.class, smartwatchId);
	}

}
