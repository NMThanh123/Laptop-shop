package vn.shop.BLL;

import java.util.List;

import vn.shop.Models.product;

public interface IproductBLL {
	
	List<product> find_by_cate(int id);
	
	int countAll();
	
	List<product> findAllPage(int indexp, int count);

	List<product> findALL();
	
	void insert(product model);
	
	void delete(int id);
	
	void update(product model);
}
