package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.x.protobuf.MysqlxCrud.Insert;
import com.mysql.cj.xdevapi.Result;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.RequestDispatcher;

public class UserDAOAccess implements UserDAO {
	Connection connection ;
	PreparedStatement preparedStatement;
    public UserDAOAccess() {
        try {
			connection =new DBConnection().connection();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// TODO Auto-generated constructor stub
	}
	@Override
	public String store(User user) throws SQLException {
	  String check="select*from users where email=?";
	  preparedStatement =connection.prepareStatement(check);
	  preparedStatement.setString(1,user.getEmail());
	  ResultSet resultSet =preparedStatement.executeQuery();
	  
	  if(resultSet.next()) {
		  
		  return "300";
		  
	  }else {
		   String query="insert into users(name,email,password) values(?,?,?)";
		   preparedStatement=connection.prepareStatement(query);
		   preparedStatement.setString(1,user.getName());
		   preparedStatement.setString(2,user.getEmail());
		   preparedStatement.setString(3,user.getPassword());
		   preparedStatement.executeUpdate();
		   
		   
		   return "200";
	  }
	 
	  
		// TODO Auto-generated method stub
		}
	@Override
	public List<User> index() throws SQLException {
		List<User> users = new ArrayList<User>();
		String qurey = "select * from users";
		preparedStatement=connection.prepareStatement(qurey);
		ResultSet resultSet =preparedStatement.executeQuery();
		while(resultSet.next()) {
			User user=new User();
			user.setProfile(resultSet.getString("profile"));
			user.setName(resultSet.getString("name"));
			user.setEmail(resultSet.getString("email"));
			user.setId(resultSet.getInt("id"));
			users.add(user);
			
		}
		// TODO Auto-generated method stub
		return users;
	}
	@Override
	public List<User> search(String keyword) throws SQLException {
		// TODO Auto-generated method stub
		List<User> users = new ArrayList<User>();
		String qurey = "select * from users where name LIKE ? ";
		preparedStatement=connection.prepareStatement(qurey);
		preparedStatement.setString(1,"%"+keyword+"%");
		ResultSet resultSet =preparedStatement.executeQuery();
		while(resultSet.next()) {
			User user=new User();
			user.setProfile(resultSet.getString("profile"));
			user.setName(resultSet.getString("name"));
			user.setEmail(resultSet.getString("email"));
			user.setId(resultSet.getInt("id"));
			users.add(user);
			
		}
		// TODO Auto-generated method stub
		return users;
	}
	@Override
	public String delete(int id) throws SQLException {
        String query = "delete from users where  id=?";
        preparedStatement =connection.prepareStatement(query);
        preparedStatement.setInt(1,id);
        preparedStatement.executeUpdate();
        
		return "200";
	}
	@Override
	public String update(User user) throws SQLException {
		 String query="update users set name=?,email=? where id=?";
		   preparedStatement=connection.prepareStatement(query);
		   preparedStatement.setString(1,user.getName());
		   preparedStatement.setString(2,user.getEmail());
		   preparedStatement.setInt(3,user.getId());
		   preparedStatement.executeUpdate();
		   
		   
		   return "200";
		// TODO Auto-generated method stub
		
	}
	@Override
	public String login(User user) throws SQLException {
		
		 String query = "select * from users where email=? and password=?";
		 preparedStatement =connection.prepareStatement(query);
		 preparedStatement.setString(1,user.getEmail());
		 preparedStatement.setString(2,user.getPassword());
		 ResultSet resultSet =preparedStatement.executeQuery();
		 if(resultSet.next()) {
			 return "200";
		 }
		// TODO Auto-generated method stub
		return "300";
	}
	@Override
	public String edit(User user) throws SQLException {
		// TODO Auto-generated method stub
		String query ="update users set name=?,password=?,profile=? where id=?";
		preparedStatement =connection.prepareStatement(query);
		preparedStatement.setString(1,user.getName());
		preparedStatement.setString(2, user.getPassword());
		preparedStatement.setString(3, user.getProfile());
		
		preparedStatement.setInt(4,user.getId());
		preparedStatement.executeUpdate();
		return "success";
	}
	@Override
	public User detail(int id) throws SQLException {
		// TODO Auto-generated method stub
		User user=new User();
		String query="select * from users where id=?";
		preparedStatement=connection.prepareStatement(query);
		preparedStatement.setInt(1,id);
		ResultSet resultSet=preparedStatement.executeQuery();
		if(resultSet.next()) {
			user.setEmail(resultSet.getString("email"));
			user.setId(resultSet.getInt("id"));
		    user.setName(resultSet.getString("name"));
		    user.setProfile(resultSet.getString("profile"));
		    user.setPassword(resultSet.getString("password"));
		    
		    
		}
		return user;
	}

}
