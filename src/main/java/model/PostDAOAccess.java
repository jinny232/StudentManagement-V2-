package model;

import java.security.Timestamp;
import java.security.spec.ECField;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.sql.*;
public class PostDAOAccess implements PostDAO  {
	 Connection connection;
	 PreparedStatement preparedStatement;
	
	public PostDAOAccess() {
		try {
			 connection = new DBConnection().connection();
			
		}catch (Exception e) {
			// TODO: handle exception
	e.printStackTrace();
		}
		
		
	}

	@Override
	public String store(Post post) throws SQLException {
		// TODO Auto-generated method stub
		String qurey ="insert into posts(title,image,created_at,updated_at,category,year) values(?,?,?,?,?,?)";
		preparedStatement =connection.prepareStatement(qurey);
		preparedStatement.setString(1,post.getTitle());
		preparedStatement.setString(2,post.getImage());
		preparedStatement.setTimestamp(3,new java.sql.Timestamp(new Date().getTime()));
		preparedStatement.setTimestamp(4,new java.sql.Timestamp(new Date().getTime()));
		preparedStatement.setString(5,post.getCategory());
		preparedStatement.setString(6,post.getYear());
		preparedStatement.executeUpdate();
		return "success";
	}

	@Override
	public List<Post> index() throws SQLException {
		// TODO Auto-generated method stub
      preparedStatement =connection.prepareStatement("select * from posts");
		List<Post> allPosts = new ArrayList<Post>();
		ResultSet resultSet =preparedStatement.executeQuery();
		while(resultSet.next()) {
			Post post =new Post();
		
			post.setId(resultSet.getInt("id"));
			post.setTitle(resultSet.getString("title"));
			post.setImage(resultSet.getString("image"));
			post.setCategory(resultSet.getString("category"));
			allPosts.add(post);
			
		}
		return allPosts;
		
	}

	@Override
	public List<Post> search(String keyword,String category) throws SQLException {
		// TODO Auto-generated method stub
	   List<Post> posts  = new ArrayList<Post>();
	   String query ="select * from posts where category=? and title like? ";
	   preparedStatement =connection.prepareStatement(query);
	   preparedStatement.setString(1,category);
	   preparedStatement.setString(2,"%"+keyword+"%");
	   ResultSet resultSet  =preparedStatement.executeQuery();
	   while(resultSet.next()) {
		 Post post =new Post();
		 post.setId(resultSet.getInt("id"));
		 post.setTitle(resultSet.getString("title"));
		 post.setImage(resultSet.getString("image"));
		 posts.add(post);
		 
	   
	   }
		return posts;
	}
	

}
