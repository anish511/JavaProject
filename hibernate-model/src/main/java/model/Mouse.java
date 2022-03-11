package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "mouse")
public class Mouse extends Product implements Serializable{

	@Column
	private String connectionType;
	
	@Column
	private String colour;
	
	@Column
	private String lifeStyle;
	
	@Column
	private String DPI;

	public String getConnectionType() {
		return connectionType;
	}

	public void setConnectionType(String connectionType) {
		this.connectionType = connectionType;
	}

	public String getColour() {
		return colour;
	}

	public void setColour(String colour) {
		this.colour = colour;
	}

	public String getLifeStyle() {
		return lifeStyle;
	}

	public void setLifeStyle(String lifeStyle) {
		this.lifeStyle = lifeStyle;
	}

	public String getDPI() {
		return DPI;
	}

	public void setDPI(String dPI) {
		DPI = dPI;
	}
	
	@Override
	public void display() {
		System.out.println("Product_Id : " + getProductID() +", Product_Name : " +getName() +", Product_Description : " +getDescription() +", Product_Price : " +getPrice() 
		+", Quantity : " +getQuantity()+ ", ConnectionType : " +this.connectionType +" , Colour : " +this.colour +" , DPI : "+ this.DPI +" , Lifestyle : " + this.lifeStyle);
	}
}
