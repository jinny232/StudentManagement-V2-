package model;
import java.sql.*;
public class DBConnection {
	
	public Connection connection() throws ClassNotFoundException, SQLException {
		 String url = "jdbc:mysql://localhost:3306/ucs_server";
	      String username = "root";
	      String password = "";
		 Class.forName("com.mysql.jdbc.Driver");
		return DriverManager.getConnection(url,username,password);
	}
      
}