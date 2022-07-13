package dao;

import java.util.List;

import model.Smartwatch;

public interface SmartwatchDAO {
	public void addSmartwatch(Smartwatch smartwatch);

	public List<Smartwatch> getAllSmartwatches();

	public void deleteSmartwatch(Integer smartwatchId);

	public Smartwatch updateSmartwatch(Smartwatch smartwatch);

	public Smartwatch getSmartwatch(int smartwatchId);
}
