package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.MouseDAO;
import model.Mouse;

@Service
@Transactional
public class MouseServiceImpl implements MouseService{

	@Autowired
	private MouseDAO mouseDAO;
	
	@Override
	@Transactional
	public void addMouse(Mouse mouse) {
		// TODO Auto-generated method stub
		mouseDAO.addMouse(mouse);
	}
	
	@Override
	@Transactional
	public List<Mouse> getAllMouses() {
		return mouseDAO.getAllMouses();
	}
	

	@Override
	@Transactional
	public void deleteMouse(Integer mouseId) {
		mouseDAO.deleteMouse(mouseId);
	}
	
	
	@Override
	@Transactional
	public Mouse getMouse(int productid) {
		return mouseDAO.getMouse(productid);
	}

	@Override
	@Transactional
	public Mouse updateMouse(Mouse mouse) {
		// TODO Auto-generated method stub
		return mouseDAO.updateMouse(mouse);
	}
}
