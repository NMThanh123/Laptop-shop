package vn.shop.Models;

import java.io.Serializable;

public class provider implements Serializable {

	private static final long serialVersionUID = 1L;

	private int providerID;
	private String name;
	private String icon;
	//setter and getter
	public int getProviderID() {
		return providerID;
	}
	public void setProviderID(int providerID) {
		this.providerID = providerID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	//constructor
	public provider() {
		super();
	}
	public provider(int providerID, String name, String icon) {
		super();
		this.providerID = providerID;
		this.name = name;
		this.icon = icon;
	}
	//toString
	@Override
	public String toString() {
		return "provider [providerID=" + providerID + ", name=" + name + ", icon=" + icon + "]";
	}
	
}
