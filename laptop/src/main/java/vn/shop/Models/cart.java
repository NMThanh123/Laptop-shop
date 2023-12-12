package vn.shop.Models;

import java.io.Serializable;

public class cart implements Serializable {

	private static final long serialVersionUID = 1L;

	private int cartID;
	private int productID;
	private int price;
	private String name;
	private String image;
	private product product;
	//getter and setter
	public int getProductID() {
		return productID;
	}
	public int getCartID() {
		return cartID;
	}
	public void setCartID(int cartID) {
		this.cartID = cartID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int totalPrice) {
		this.price = totalPrice;
	}
	public product getProduct() {
		return product;
	}
	public void setProduct(product product) {
		this.product = product;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	//constructor
	public cart() {
		super();
	}
	public cart(int cartID, int productID, int price, String name, String image, vn.shop.Models.product product) {
		super();
		this.cartID = cartID;
		this.productID = productID;
		this.price = price;
		this.name = name;
		this.image = image;
		this.product = product;
	}
	//toString
	@Override
	public String toString() {
		return "cart [cartID=" + cartID + ", productID=" + productID + ", price=" + price + ", name=" + name
				+ ", image=" + image + ", product=" + product + "]";
	}
	
}
