package dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Television;

@Repository
public class TelevisionDAOImpl implements TelevisionDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addTelevision(Television television) {
		sessionFactory.getCurrentSession().saveOrUpdate(television);
	}
	
	@Override
	public void deleteTelevision(Integer televisionid) {
		Television television = (Television) sessionFactory.getCurrentSession().load(Television.class, televisionid);
		if(null != television) {
			sessionFactory.getCurrentSession().delete(television);
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<Television> getAllTelevisions(){
		List<Television> listTelevision = sessionFactory.getCurrentSession().createQuery("from Television").list();
		return listTelevision;
	}
	
	
	public Television getTelevision(int productid) {
		return (Television) sessionFactory.getCurrentSession().get(
				Television.class, productid);
	}
	
	@Override
	public Television updateTelevision(Television television) {
		sessionFactory.getCurrentSession().update(television);
		return television;
	}

}
