package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "television")
public class Television extends Product implements Serializable{

	@Column
	private String displaySize;
	
	@Column
	private String resolution;
	
	@Column
	private String type;
	
	@Column
	private String colour;
	
	@Column
	private String extension;
	
	@Column
	private String power;

	public String getDisplaySize() {
		return displaySize;
	}

	public void setDisplaySize(String displaySize) {
		this.displaySize = displaySize;
	}

	public String getResolution() {
		return resolution;
	}

	public void setResolution(String resolution) {
		this.resolution = resolution;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getColour() {
		return colour;
	}

	public void setColour(String colour) {
		this.colour = colour;
	}

	public String getExtension() {
		return extension;
	}

	public void setExtension(String extension) {
		this.extension = extension;
	}

	public String getPower() {
		return power;
	}

	public void setPower(String power) {
		this.power = power;
	}
	
	@Override
	public void display() {
		System.out.println("Product_Id : " + getProductID() +", Product_Name : " +getName() +", Product_Description : " +getDescription() +", Product_Price : " +getPrice() 
		+", Quantity : " +getQuantity()+ ", Display Size : " + this.displaySize +", Colour : " + this.colour  +", Resolution : " +this.resolution +", Type : " +this.type +", Extension : " +this.extension +
		", Power Consumption : " +this.power );
	}
}
