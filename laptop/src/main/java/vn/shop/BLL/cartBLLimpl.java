package vn.shop.BLL;

import java.util.List;

import vn.shop.DAO.IcartDAO;
import vn.shop.DAO.cartDAOimpl;
import vn.shop.Models.cart;

public class cartBLLimpl implements IcartBLL {

	IcartDAO cartDAO = new cartDAOimpl(); 
	
	@Override
	public List<cart> findAll() {
		return cartDAO.findAll();
	}

	@Override
	public int total() {
		return cartDAO.total();
	}

	@Override
	public void insert(int id) {
		cartDAO.insert(id);
	}

	@Override
	public void delete(int id) {
		cartDAO.delete(id);
	}

	
}
