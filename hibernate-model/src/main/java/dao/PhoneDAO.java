package dao;

import java.util.List;

import model.Phone;

public interface PhoneDAO {

	public void addPhone(Phone phone);

	public List<Phone> getAllPhones();

	public void deletePhone(Integer phoneId);

	public Phone updatePhone(Phone phone);

	public Phone getPhone(int phoneid);
}
