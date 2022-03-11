package dao;

import java.util.List;

import model.Mouse;

public interface MouseDAO {

	public void addMouse(Mouse mouse);

	public List<Mouse> getAllMouses();

	public void deleteMouse(Integer mouseId);

	public Mouse updateMouse(Mouse mouse);

	public Mouse getMouse(int mouseid);
}
