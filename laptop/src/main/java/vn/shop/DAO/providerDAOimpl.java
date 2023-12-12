package vn.shop.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import vn.shop.Controllers.DBConnection;
import vn.shop.Models.provider;

public class providerDAOimpl implements IproviderDAO {

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	@Override
	public List<provider> findALL() {
		List<provider> list = new ArrayList<provider>();
		String sql = "Select * from provider";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				provider pvd = new provider();
				pvd.setProviderID(rs.getInt("providerID"));
				pvd.setName(rs.getString("name"));
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
		IproviderDAO proDAL = new providerDAOimpl();
		List<provider> list1 = proDAL.findALL();
		System.out.println(list1);
	}
}
