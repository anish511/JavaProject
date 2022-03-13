package service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.RefrigeratorDAO;
import model.Refrigerator;

@Service
@Transactional
public class RefrigeratorServiceImpl implements RefrigeratorService {

	@Autowired
	private RefrigeratorDAO refrigeratorDAO;
	
	@Override
	@Transactional
	public void addRefrigerator(Refrigerator refrigerator) {
		refrigeratorDAO.addRefrigerator(refrigerator);
	}

	@Override
	@Transactional
	public List<Refrigerator> getAllRefrigerators() {
		return refrigeratorDAO.getAllRefrigerators();
	}

	@Override
	@Transactional
	public void deleteRefrigerator(Integer refrigeratorId) {
		refrigeratorDAO.deleteRefrigerator(refrigeratorId);
	}

	@Override
	@Transactional
	public Refrigerator updateRefrigerator(Refrigerator refrigerator) {
		return refrigeratorDAO.updateRefrigerator(refrigerator);
	}

	@Override
	@Transactional
	public Refrigerator getRefrigerator(int refrigeratorId) {
		return refrigeratorDAO.getRefrigerator(refrigeratorId);
	}

}
