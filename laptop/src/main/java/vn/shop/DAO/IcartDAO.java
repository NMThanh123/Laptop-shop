package vn.shop.DAO;

import java.util.List;

import vn.shop.Models.cart;
import vn.shop.Models.product;

public interface IcartDAO {

	List<cart> findAll();
	
	int total();

	void insert(int id);
	
	int count();
	
	void delete(int id);
	
	void deleteAll();
}
