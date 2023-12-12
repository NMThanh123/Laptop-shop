package vn.shop.Models;

import java.io.Serializable;

@SuppressWarnings("serial")
public class user implements Serializable {

	private static final long serialVersionUID = 1L;

	private int userID;
	private String email;
	private String name;
	private String password;
	private String phone_number;
	private boolean is_admin;
	//setter and getter
	public int getUserID() {
		return userID;
	}
	
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public boolean isIs_admin() {
		return is_admin;
	}
	public void setIs_admin(boolean is_admin) {
		this.is_admin = is_admin;
	}
	//constructor
	public user() {
		super();
	}
	public user(String email, String name, String code) {
		super();
		this.email = email;
		this.name = name;
		
	}
	public user(String email, String name, String password, String code, boolean is_admin) {
		super();
		this.email = email;
		this.name = name;
		this.password = password;
		this.is_admin = is_admin;
	}
	public user(int userID, String email, String name, String password, String phone_number,
			boolean is_admin) {
		super();
		this.userID = userID;
		this.email = email;
		this.name = name;
		this.password = password;
		this.phone_number = phone_number;
	
		this.is_admin = is_admin;
	}
	//toString
	@Override
	public String toString() {
		return "user [userID=" + userID + ", email=" + email + ", name=" + name + ", password=" + password
				+ ", phone_number=" + phone_number + ", is_admin=" + is_admin + "]";
	}
}