package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "smartwatch")
public class Smartwatch extends Product implements Serializable{

private static final long serialVersionUID = 1L;
	
	@Column
	String dimension;
	
	@Column
	String colour;
	
	@Column
	String idealFor;
	
	@Column
	String waterResistant;
	
	@Column
	String basicFeatures;
	
	public String getDimension() {
		return dimension;
	}

	public void setDimension(String dimension) {
		this.dimension = dimension;
	}

	public String getColour() {
		return colour;
	}

	public void setColour(String colour) {
		this.colour = colour;
	}

	public String getIdealFor() {
		return idealFor;
	}

	public void setIdealFor(String idealFor) {
		this.idealFor = idealFor;
	}

	public String getWaterResistant() {
		return waterResistant;
	}

	public void setWaterResistant(String waterResistant) {
		this.waterResistant = waterResistant;
	}

	public String getBasicFeatures() {
		return basicFeatures;
	}

	public void setBasicFeatures(String basicFeatures) {
		this.basicFeatures = basicFeatures;
	}
	
	@Override
	public void display() {
		System.out.println("Product_Id : " + getProductID() +", Product_Name : " +getName() +", Product_Description : " +getDescription() +", Product_Price : " +getPrice() 
		+", Quantity : " +getQuantity()+ ",dimension=" + dimension + ", colour=" + colour + ", idealFor=" + idealFor
				+ ", waterResistant=" + waterResistant + ", basicFeatures=" + basicFeatures);
	}

}
