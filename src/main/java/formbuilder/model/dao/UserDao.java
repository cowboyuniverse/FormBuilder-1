package formbuilder.model.dao;

import java.util.List;

import formbuilder.model.User;

public interface UserDao {

    User getUser( Integer id );
    List<User> getUsers();    
    User saveUser( User user);   
	void delete(User user);
	void delete(int id);
	User getUserByUserEmail(String email);

}
