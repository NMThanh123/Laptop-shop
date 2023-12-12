package vn.shop.DAO;

import java.util.List;
import vn.shop.Models.product;

public interface IproductDAO {
	
	List<product> find_by_cate(int id);
	
	int countAll();
	int countByname(String name);
	
	List<product> findAllPage_Byname( String name, int indexp, int count);
	
	List<product> findAllPage(int indexp, int count);
	
	List<product> findAll();

	void insert(product model);

	void delete(int id);

	void update(product model);

}
