package vn.shop.BLL;

import java.util.List;

import vn.shop.DAO.IcategoryDAO;
import vn.shop.DAO.categoryDAOimpl;
import vn.shop.Models.category;

public class categoryBLLimpl implements IcategoryBLL {
	
	IcategoryDAO cate = new categoryDAOimpl();

	@Override
	public List<category> find_by_provider(int id) {
		// TODO Auto-generated method stub
		return cate.find_by_provider(id);
	}
}