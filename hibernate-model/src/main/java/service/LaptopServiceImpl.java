package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.LaptopDAO;
import model.Laptop;

@Service
@Transactional
public class LaptopServiceImpl implements LaptopService{

	@Autowired
	private LaptopDAO laptopDAO;
	
	@Override
	@Transactional
	public void addLaptop(Laptop laptop) {
		// TODO Auto-generated method stub
		laptopDAO.addLaptop(laptop);
	}
	
	@Override
	@Transactional
	public List<Laptop> getAllLaptops() {
		return laptopDAO.getAllLaptops();
	}
	

	@Override
	@Transactional
	public void deleteLaptop(Integer laptopId) {
		laptopDAO.deleteLaptop(laptopId);
	}
	
	
	@Override
	@Transactional
	public Laptop getLaptop(int lappyid) {
		return laptopDAO.getLaptop(lappyid);
	}

	@Override
	@Transactional
	public Laptop updateLaptop(Laptop laptop) {
		// TODO Auto-generated method stub
		return laptopDAO.updateLaptop(laptop);
	}

}
