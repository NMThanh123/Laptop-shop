package vn.shop.BLL;

import java.util.List;


import vn.shop.DAO.IproductDAO;
import vn.shop.DAO.productDAOimpl;
import vn.shop.Models.product;

public class productBLLimpl implements IproductBLL{
	
	IproductDAO proDAO = new productDAOimpl();
	@Override
	public List<product> find_by_cate(int id) {
		// TODO Auto-generated method stub
		return proDAO.find_by_cate(id);
	}
	
	@Override
	public int countAll() {
		return proDAO.countAll();
	}
	@Override
	public List<vn.shop.Models.product> findAllPage(int indexp, int count) {
		return proDAO.findAllPage(indexp, count);
	}
	@Override
	public List<vn.shop.Models.product> findALL() {
		return proDAO.findAll();
	}

	@Override
	public void insert(product model) {
		// TODO Auto-generated method stub
		proDAO.insert(model);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		proDAO.delete(id);
		
	}

	@Override
	public void update(product model) {
		// TODO Auto-generated method stub
		proDAO.update(model);
	}

	
}
