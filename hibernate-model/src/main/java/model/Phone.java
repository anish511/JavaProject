package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "phone")
public class Phone extends Product implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column
	private String battery;
	
	@Column
	private String camera;
	
	@Column
	private String colour;
	
	@Column
	private String processor;
	
	@Column
	private int ram;
	
	@Column
	private int rom;
	
	@Column
	private String size;

	public String getBattery() {
		return battery;
	}

	public void setBattery(String battery) {
		this.battery = battery;
	}

	public String getCamera() {
		return camera;
	}

	public void setCamera(String camera) {
		this.camera = camera;
	}

	public String getColour() {
		return colour;
	}

	public void setColour(String colour) {
		this.colour = colour;
	}

	public String getProcessor() {
		return processor;
	}

	public void setProcessor(String processor) {
		this.processor = processor;
	}

	public int getRam() {
		return ram;
	}

	public void setRam(int ram) {
		this.ram = ram;
	}

	public int getRom() {
		return rom;
	}

	public void setRom(int rom) {
		this.rom = rom;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}
	
	@Override
	public void display() {
		System.out.println("Product_Id : " + getProductID() +", Product_Name : " +getName() +", Product_Description : " +getDescription() +", Product_Price : " +getPrice() 
		+", Quantity : " +getQuantity()+ ", RAM : " + this.ram +", ROM : " + this.rom  +", Processor : " +this.processor +", Colour : " +this.colour +", Display Size : " +this.size +
		", Camera : " +this.camera + ", Battery : " +this.battery);
	}
	
}
