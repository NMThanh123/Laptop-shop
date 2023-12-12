package vn.shop.Models;

import java.io.Serializable;

public class category implements Serializable {

	private static final long serialVersionUID = 1L;

	private int categoryID;
	private String categoryName;
	private String icon;
	private String providerID;
	//setter and getter
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getProviderID() {
		return providerID;
	}
	public void setProviderID(String providerID) {
		this.providerID = providerID;
	}
	//constructor
	public category(int categoryID, String categoryName, String icon, String providerID) {
		super();
		this.categoryID = categoryID;
		this.categoryName = categoryName;
		this.icon = icon;
		this.providerID = providerID;
	}
	public category() {
		super();
	}
	//toString
	@Override
	public String toString() {
		return "category [categoryID=" + categoryID + ", categoryName=" + categoryName + ", icon=" + icon
				+ ", providerID=" + providerID + "]";
	}
	
}
