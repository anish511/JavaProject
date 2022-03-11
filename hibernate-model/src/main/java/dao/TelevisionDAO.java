package dao;

import java.util.List;

import model.Television;

public interface TelevisionDAO {

	public void addTelevision(Television television);

	public List<Television> getAllTelevisions();

	public void deleteTelevision(Integer televisionId);

	public Television updateTelevision(Television television);

	public Television getTelevision(int televisionid);
}
