package vn.shop.Models;

import java.io.Serializable;

public class specification implements Serializable {

	private static final long serialVersionUID = 1L;

	private int productID;
	private String CPU;
	private String VGA;
	private String SSD;
	private String RAM;
	//setter nad getter
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getCPU() {
		return CPU;
	}
	public void setCPU(String cPU) {
		CPU = cPU;
	}
	public String getVGA() {
		return VGA;
	}
	public void setVGA(String vGA) {
		VGA = vGA;
	}
	public String getSSD() {
		return SSD;
	}
	public void setSSD(String sSD) {
		SSD = sSD;
	}
	public String getRAM() {
		return RAM;
	}
	public void setRAM(String rAM) {
		RAM = rAM;
	}
	//constructor
	public specification(int productID, String cPU, String vGA, String sSD, String rAM) {
		super();
		this.productID = productID;
		CPU = cPU;
		VGA = vGA;
		SSD = sSD;
		RAM = rAM;
	}
	public specification() {
		super();
	}
	//toString
	@Override
	public String toString() {
		return "specification [productID=" + productID + ", CPU=" + CPU + ", VGA=" + VGA + ", SSD=" + SSD + ", RAM="
				+ RAM + "]";
	}
	
}
