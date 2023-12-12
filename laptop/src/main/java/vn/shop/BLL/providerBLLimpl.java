package vn.shop.BLL;

import java.util.List;

import vn.shop.DAO.IproviderDAO;
import vn.shop.DAO.providerDAOimpl;
import vn.shop.Models.provider;

public class providerBLLimpl implements IproviderBLL {
	
	IproviderDAO pvd = new providerDAOimpl();

	@Override
	public List<provider> findALL() {
		return pvd.findALL();
	}

}
