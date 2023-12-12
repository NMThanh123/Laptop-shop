package vn.shop.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import vn.shop.Controllers.DBConnection;
import vn.shop.Models.product;

public class productDAOimpl implements IproductDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	@Override
	public List<product> find_by_cate(int id) {
		List<product> list = new ArrayList<product>();
		String sql = "Select * from product where categoryID=?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				product pro = new product();
				pro.setCategoryID(id);
				pro.setProductID(rs.getInt("productID"));
				pro.setName(rs.getString("name"));
				pro.setImage(rs.getString("image"));
				list.add(pro);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public List<product> findAllPage(int indexp, int count) {
		List<product> listpro = new ArrayList<product>();
		String sql = "Select product.amount, product.productID, product.price, product.name, product.image, \r\n"
				+ "product.description\r\n"
				+ "from product\r\n"
				+ "order by productID asc limit ?,?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, indexp);
			ps.setInt(2, count);
			rs = ps.executeQuery();
			while (rs.next()) {
				product pro = new product();
				pro.setProductID(rs.getInt("productID"));
				pro.setName(rs.getString("name"));
				pro.setImage(rs.getString("image"));
				pro.setPrice(rs.getInt("price"));
				pro.setDescription(rs.getString("description"));
				pro.setAmount(rs.getInt("amount"));
				listpro.add(pro);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listpro;
	}
	
	
	public List<product> findAllPage_byID( int id, int indexp, int count) {
		List<product> listpro = new ArrayList<product>();
		String sql = "Select product.amount, product.productID, product.price, product.name, product.image, \r\n"
				+ "product.description\r\n"
				+ "from product\r\n"
				+ "where categoryID=? order by productID asc limit ?,?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setInt(2, indexp);
			ps.setInt(3, count);
			rs = ps.executeQuery();
			while (rs.next()) {
				product pro = new product();
				pro.setProductID(rs.getInt("productID"));
				pro.setName(rs.getString("name"));
				pro.setImage(rs.getString("image"));
				pro.setPrice(rs.getInt("price"));
				pro.setDescription(rs.getString("description"));
				pro.setAmount(rs.getInt("amount"));
				listpro.add(pro);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
//		System.out.println(listpro);
		return listpro;
	}

	@Override
	public int countAll() {
		String sql = "select count(*) from product";
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
	
	
	public product find_one(int id) {
		String sql = "select * from product where productID=?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new product(rs.getInt(1), 
						rs.getInt(2), 
						rs.getString(3), 
						rs.getInt(4), 
						rs.getString(5), 
						rs.getString(6), 
						rs.getInt(7));
					
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}


	@Override
	public List<product> findAll() {
		String sql = "select * from product";
		List<product> listpro = new ArrayList<product>();
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				product model = new product();
				model.setProductID(rs.getInt("productID"));
				model.setCategoryID(rs.getInt("categoryID"));
				model.setName(rs.getString("name"));
				model.setImage(rs.getString("image"));
				model.setPrice(rs.getInt("price"));
				model.setDescription(rs.getString("description"));
				model.setAmount(rs.getInt("amount"));
				listpro.add(model);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listpro;
	}
	
	@Override
	public void insert(product model) {
		String sql ="insert into product(productID, categoryID, name, price, description, image, amount) values(?,?,?,?,?,?,?)";
		try {
			Connection conn = new DBConnection().getConnection();
			PreparedStatement ps =  conn.prepareStatement(sql);
			ps.setString(6, model.getImage());
			ps.setInt(1, model.getProductID());
			ps.setInt(2, model.getCategoryID());
			ps.setString(3, model.getName());
			ps.setInt(4, model.getPrice());
			ps.setString(5, model.getDescription());
			ps.setInt(7, model.getAmount());
			
			ps.executeUpdate();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void update(product model) {
		String sql ="update product set productID=?, categoryID=?, name=?, price=?, description=?, amount=? where productID=?" ;
		try {
			Connection conn = new DBConnection().getConnection();
			PreparedStatement ps =  conn.prepareStatement(sql);
			ps.setInt(1, model.getProductID());
			ps.setInt(2, model.getCategoryID());
			ps.setString(3, model.getName());
			ps.setInt(4, model.getPrice());
			ps.setString(5, model.getDescription());
			ps.setInt(6, model.getAmount());
			ps.setInt(7, model.getProductID());
			
			ps.executeUpdate();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	public void delete(int id) {
		String sql = "delete from product where productID = ?";
		
		try {
			Connection conn = new DBConnection().getConnection();
			PreparedStatement ps =  conn.prepareStatement(sql);
			//gan gia tri cho tham so

			ps.setInt(1,id);
			
			ps.executeUpdate();//thuc thi cau query
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<product> findAllPage_Byname( String name, int indexp, int count) {
		List<product> listpro = new ArrayList<product>();
		String sql = "Select product.amount, product.productID, product.price, product.name, product.image, \r\n"
				+ "product.description\r\n"
				+ "from product\r\n"
				+ "where product.name like ? order by productID asc limit ?,?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + name +"%");
			ps.setInt(2, indexp);
			ps.setInt(3, count);
			rs = ps.executeQuery();
			while (rs.next()) {
				product pro = new product();
				pro.setImage(rs.getString("image"));
				pro.setProductID(rs.getInt("productID"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getInt("price"));
				pro.setDescription(rs.getString("description"));
				pro.setAmount(rs.getInt("amount"));
				listpro.add(pro);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
//		System.out.println(listpro);
		return listpro;
	}
	
	public static void main(String[] args) {
		IproductDAO productDAL = new productDAOimpl();
		List<product> list1 = productDAL.find_by_cate(1);
		System.out.println(list1);
	}

	@Override
	public int countByname(String name) {
		String sql = "select count(*) from product where product.name like ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + name +"%");
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

}
