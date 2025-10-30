package model;
import java.sql.SQLException;
import java.util.List;
public interface PostDAO {
	public String store(Post post) throws SQLException;
	public List<Post> index() throws SQLException;
	public List<Post> search(String keyword,String category) throws SQLException;
	

}
