package vn.shop.BLL;

import java.util.List;

import vn.shop.Models.cart;

public interface IcartBLL {

	List<cart> findAll();
	
	int total();

	void insert(int id);
	
	void delete(int id);
}
