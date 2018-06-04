package service;

import dto.User;

public interface UserService {

	User login(String username, String password) throws Exception;

	
	void register(User user) throws Exception;


	void update(String username,String password) throws Exception;


	void allupdate(User user,String username) throws Exception;

}
