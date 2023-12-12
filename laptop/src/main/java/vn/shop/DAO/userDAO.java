package vn.shop.DAO;

import vn.shop.Models.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import vn.shop.Controllers.DBConnection;

public class userDAO implements IUserDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public user login(String name, String pass) {
		String sql = "Select * from user where name=? and password=?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new user(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getBoolean(6));

			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public void signup(String name, String email, String password) {
		String sql = "insert into user(email,name,password) values(?,?,?)";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, name);
			ps.setString(3, password);
			ps.executeUpdate();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public user check_user(String name) {
		String sql = "Select * from user where name=?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new user(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getBoolean(6));

			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void insertRegister(user user) {
		// TODO Auto-generated method stub
		
	}

}
