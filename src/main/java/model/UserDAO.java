package model;

import java.sql.SQLException;
import java.util.List;

public interface UserDAO {
public String store(User user) throws SQLException;
public  List<User> index() throws SQLException;
public List<User> search(String keyword) throws SQLException;
public String delete(int id)throws SQLException;
public String update(User user) throws SQLException;
public String login(User user) throws SQLException;
public String  edit(User user) throws SQLException;
public User detail(int id) throws SQLException;

}
