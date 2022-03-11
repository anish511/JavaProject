package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.TelevisionDAO;
import model.Television;

@Service
@Transactional
public class TelevisionServiceImpl implements TelevisionService{

	@Autowired
	private TelevisionDAO televisionDAO;
	
	@Override
	@Transactional
	public void addTelevision(Television television) {
		televisionDAO.addTelevision(television);
	}
	
	@Override
	@Transactional
	public List<Television> getAllTelevisions() {
		return televisionDAO.getAllTelevisions();
	}
	

	@Override
	@Transactional
	public void deleteTelevision(Integer televisionId) {
		televisionDAO.deleteTelevision(televisionId);
	}
	
	
	@Override
	@Transactional
	public Television getTelevision(int productid) {
		return televisionDAO.getTelevision(productid);
	}

	@Override
	@Transactional
	public Television updateTelevision(Television Television) {
		return televisionDAO.updateTelevision(Television);
	}
}
