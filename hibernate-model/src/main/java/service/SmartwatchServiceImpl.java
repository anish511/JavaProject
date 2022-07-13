package service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.SmartwatchDAO;
import model.Smartwatch;

@Service
@Transactional
public class SmartwatchServiceImpl implements SmartwatchService {

	@Autowired
	private SmartwatchDAO smartwatchDAO;
	
	@Override
	@Transactional
	public void addSmartwatch(Smartwatch smartwatch) {
		smartwatchDAO.addSmartwatch(smartwatch);
	}

	@Override
	@Transactional
	public List<Smartwatch> getAllSmartwatches() {
		return smartwatchDAO.getAllSmartwatches();
	}

	@Override
	@Transactional
	public void deleteSmartwatch(Integer smartwatchId) {
		smartwatchDAO.deleteSmartwatch(smartwatchId);
	}

	@Override
	@Transactional
	public Smartwatch updateSmartwatch(Smartwatch smartwatch) {
		return smartwatchDAO.updateSmartwatch(smartwatch);
	}

	@Override
	@Transactional
	public Smartwatch getSmartwatch(int smartwatchId) {
		return smartwatchDAO.getSmartwatch(smartwatchId);
	}

}
