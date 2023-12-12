package vn.shop.Controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnection {

	private static String DB_URL = "jdbc:mysql://localhost:3306/laptop";

	private static String USER_NAME = "root";

	private static String PASSWORD = "thanhdev";

	private static Connection con;

	public Connection getConnection() throws IOException {

	con = null;

	try {

	// driver register
	DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

	con = (Connection) DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);

	} catch (SQLException ex) {

	Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);

	}

	return (con);

	}

	public static void freeConnection() {

	try {

	con.close();

	} catch (SQLException ex) {

	Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);

	}

	}

	public static void main(String[] args) {

	try {

	Connection c = new DBConnection().getConnection();

	//new DBConnection();

	//System.out.println(DBConnection.getConnection());

	if (c == null) {

	System.out.println("something wrong");

	} else {

	System.out.println("ok");

	}

	} catch (Exception e) {

	e.printStackTrace();

	}

	
	  //truy vấn bản category
	  
	  try {
	  
	  Connection conn = new DBConnection().getConnection();
	  
	  Statement stmt = conn.createStatement();
	  
	  ResultSet rs = stmt.executeQuery("select * from category");
	  
	  while (rs.next()) {
	  
	  System.out.println(rs.getInt(1) + "  " + rs.getString(2) + "  " +
	  rs.getString(3) + " " + rs.getInt(4));
	  
	  }
	  
	  conn.close();
	  
	  } catch (Exception ex) {
	  
	  ex.printStackTrace();
	  
	  }
	 

	}
	
}
