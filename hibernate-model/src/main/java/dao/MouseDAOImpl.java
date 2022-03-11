package dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Mouse;

@Repository
public class MouseDAOImpl implements MouseDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addMouse(Mouse mouse) {
		sessionFactory.getCurrentSession().saveOrUpdate(mouse);
	}
	
	@Override
	public void deleteMouse(Integer mouseid) {
		Mouse mouse = (Mouse) sessionFactory.getCurrentSession().load(Mouse.class, mouseid);
		if(null != mouse) {
			sessionFactory.getCurrentSession().delete(mouse);
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<Mouse> getAllMouses(){
		List<Mouse> listMouse = sessionFactory.getCurrentSession().createQuery("from Mouse").list();
		return listMouse;
	}
	
	
	public Mouse getMouse(int productid) {
		return (Mouse) sessionFactory.getCurrentSession().get(
				Mouse.class, productid);
	}
	
	@Override
	public Mouse updateMouse(Mouse mouse) {
		sessionFactory.getCurrentSession().update(mouse);
		return mouse;
	}
}
