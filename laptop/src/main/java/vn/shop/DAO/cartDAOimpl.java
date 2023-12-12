package vn.shop.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import vn.shop.Controllers.DBConnection;
import vn.shop.Models.cart;

public class cartDAOimpl implements IcartDAO {

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	@Override
	public List<cart> findAll() {
		List<cart> list = new ArrayList<cart>();
		String sql = "Select * from cart";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				cart model = new cart();
				model.setProductID(rs.getInt("productID"));
				model.setCartID(rs.getInt("cartID"));
				model.setName(rs.getString("name"));
				model.setImage(rs.getString("image"));
				model.setPrice(rs.getInt("price"));
				list.add(model);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public int total() {
		String sql = "select sum(price) from cart";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				return rs.getInt(1);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public void insert(int id) {
		String sql = "INSERT INTO cart (cart.productID, cart.name, cart.image, cart.price)\r\n"
				+ "SELECT product.productID, product.name, product.image, product.price\r\n"
				+ "FROM product\r\n"
				+ "WHERE product.productID = ?";
		try {
			Connection conn = new DBConnection().getConnection();
			PreparedStatement ps =  conn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	@Override
	public int count() {
		String sql = "select count(*) from cart";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				return rs.getInt(1);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public void delete(int id) {
		String sql = "delete from cart where cartID = ?";
		try {
			Connection conn = new DBConnection().getConnection();
			PreparedStatement ps =  conn.prepareStatement(sql);
			ps.setInt(1,id);
			ps.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public void deleteAll() {
		String sql = "delete from cart";
		try {
			Connection conn = new DBConnection().getConnection();
			PreparedStatement ps =  conn.prepareStatement(sql);
			ps.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		IcartDAO cart = new cartDAOimpl();
//		List<cart> list1 = cart.total();
		System.out.println(cart.total());
	}
}
