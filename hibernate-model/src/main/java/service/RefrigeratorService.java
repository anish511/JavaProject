package service;

import java.util.List;

import model.Refrigerator;

public interface RefrigeratorService {
	public void addRefrigerator(Refrigerator refrigerator);
	
	public List<Refrigerator> getAllRefrigerators();

	public void deleteRefrigerator(Integer refrigeratorId);

	public Refrigerator updateRefrigerator(Refrigerator refrigerator);

	public Refrigerator getRefrigerator(int refrigeratorid);
}
