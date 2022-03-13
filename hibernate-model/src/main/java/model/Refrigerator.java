package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "refrigerator")
public class Refrigerator extends Product implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column
	int capacity;
	
	@Column
	String dimension;
	
	@Column
	String coolingTech;
	
	@Column
	int stars;
	
	@Column
	String doorstyle;
	
	@Column
	String colour;

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public String getDimension() {
		return dimension;
	}

	public void setDimension(String dimension) {
		this.dimension = dimension;
	}

	public String getCoolingTech() {
		return coolingTech;
	}

	public void setCoolingTech(String coolingTech) {
		this.coolingTech = coolingTech;
	}

	public int getStars() {
		return stars;
	}

	public String getColour() {
		return colour;
	}

	public void setColour(String colour) {
		this.colour = colour;
	}

	public void setStars(int stars) {
		this.stars = stars;
	}

	public String getDoorstyle() {
		return doorstyle;
	}

	public void setDoorstyle(String doorstyle) {
		this.doorstyle = doorstyle;
	}

	@Override
	public void display() {
		System.out.println("Product_Id : " + getProductID() +", Product_Name : " +getName() +", Product_Description : " +getDescription() +", Product_Price : " +getPrice() 
		+", Quantity : " +getQuantity()+ ",Capacity=" + capacity + ", Dimension=" + dimension + ", Cooling Technology =" + coolingTech
				+ ", Stars=" + stars + ", Doorstyle=" + doorstyle );
	}
	
	
}
