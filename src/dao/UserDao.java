package dao;

import dto.User;

public interface UserDao {

	User getByUsernameAndPwd(String username, String password) throws Exception;

	void add(User user) throws Exception;

	void updatePwd(String username,String password) throws Exception;

	void Allupdate(User user,String username) throws Exception;

}
