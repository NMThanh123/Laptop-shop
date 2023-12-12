package vn.shop.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import vn.shop.Controllers.DBConnection;
import vn.shop.Models.category;

public class categoryDAOimpl implements IcategoryDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	@Override
	public List<category> find_by_provider(int id) {
		List<category> list = new ArrayList<category>();
		String sql = "Select * from category where providerID=?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				category pvd = new category();
				pvd.setCategoryID(rs.getInt("categoryID"));
				pvd.setCategoryName(rs.getString("categoryName"));
				pvd.setIcon(rs.getString("icon"));
				list.add(pvd);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	
	public static void main(String[] args) {
		IcategoryDAO cateDAL = new categoryDAOimpl();
		List<category> list1 = cateDAL.find_by_provider(2);
		System.out.println(list1);
	}

}


