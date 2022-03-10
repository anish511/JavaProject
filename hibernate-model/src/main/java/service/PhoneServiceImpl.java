package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.PhoneDAO;
import model.Phone;

@Service
@Transactional
public class PhoneServiceImpl implements PhoneService{

	@Autowired
	private PhoneDAO phoneDAO;
	
	@Override
	@Transactional
	public void addPhone(Phone phone) {
		// TODO Auto-generated method stub
		phoneDAO.addPhone(phone);
	}
	
	@Override
	@Transactional
	public List<Phone> getAllPhones() {
		return phoneDAO.getAllPhones();
	}
	

	@Override
	@Transactional
	public void deletePhone(Integer phoneId) {
		phoneDAO.deletePhone(phoneId);
	}
	
	
	@Override
	@Transactional
	public Phone getPhone(int productid) {
		return phoneDAO.getPhone(productid);
	}

	@Override
	@Transactional
	public Phone updatePhone(Phone phone) {
		// TODO Auto-generated method stub
		return phoneDAO.updatePhone(phone);
	}
}
