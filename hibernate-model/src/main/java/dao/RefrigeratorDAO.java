package dao;

import java.util.List;

import model.Refrigerator;


public interface RefrigeratorDAO {
	public void addRefrigerator(Refrigerator refrigerator);

	public List<Refrigerator> getAllRefrigerators();

	public void deleteRefrigerator(Integer refrigeratorId);

	public Refrigerator updateRefrigerator(Refrigerator refrigerator);

	public Refrigerator getRefrigerator(int refrigeratorId);
}
