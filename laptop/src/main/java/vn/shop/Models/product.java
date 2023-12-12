package vn.shop.Models;

import java.io.Serializable;

public class product implements Serializable {

	private static final long serialVersionUID = 1L;

	private int productID;
	private int categoryID;
	private String name;
	private int price;
	private String description;
	private String image;
	private int amount;
	//setter and getter
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	//constructor
	public product(int productID, int categoryID, String name, int price, String description, String image,
			int amount) {
		super();
		this.productID = productID;
		this.categoryID = categoryID;
		this.name = name;
		this.price = price;
		this.description = description;
		this.image = image;
		this.amount = amount;
	}
	public product() {
		super();
	}
	//toString
	@Override
	public String toString() {
		return "product [productID=" + productID + ", categoryID=" + categoryID + ", name=" + name + ", price=" + price
				+ ", description=" + description + ", image=" + image + ", amount=" + amount + "]";
	}
	
}
