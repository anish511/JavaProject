package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "laptop")
public class Laptop extends Product implements Serializable{

    private static final long serialVersionUID = 1L;

    @Column
    private int ram;
    
    @Column
    private String displaySize;
    
    @Column
    private String memory;
    
    @Column
    private String GPU;
    
	@Column
    private String processor;
    
    @Column
    private String colour;
    
    public int getRam() {
		return ram;
	}

	public void setRam(int ram) {
		this.ram = ram;
	}

	public String getDisplaySize() {
		return displaySize;
	}

	public void setDisplaySize(String displaySize) {
		this.displaySize = displaySize;
	}

	public String getMemory() {
		return memory;
	}

	public void setMemory(String memory) {
		this.memory = memory;
	}

	public String getGPU() {
		return GPU;
	}

	public void setGPU(String gPU) {
		GPU = gPU;
	}

	public String getProcessor() {
		return processor;
	}

	public void setProcessor(String processor) {
		this.processor = processor;
	}

	public String getColour() {
		return colour;
	}

	public void setColour(String colour) {
		this.colour = colour;
	}

    
	@Override
	public void display() {
		// TODO Auto-generated method stub
		System.out.println("Product_Id : " + getProductID() +", Product_Name : " +getName() +", Product_Description : " +getDescription() +", Product_Price : " +getPrice() 
		+", Product_Name : " +getName()+ ", RAM : " + this.ram +", Memory : " + this.memory  +", Processor : " +this.processor +", Colour : " +this.colour +", Display Size : " +this.displaySize +", GPU : " + this.GPU);
	}
	
	
}
