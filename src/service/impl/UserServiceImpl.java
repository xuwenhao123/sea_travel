package service.impl;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import dto.User;
import service.UserService;

public class UserServiceImpl implements UserService {

	@Override
	public User login(String username, String password) throws Exception {
		UserDao dao = new UserDaoImpl();
		
		return dao.getByUsernameAndPwd(username,password);
	}

	@Override
	public void register(User user) throws Exception {
		UserDao dao = new UserDaoImpl();
		dao.add(user);
		
	}

	@Override
	public void update(String username,String password) throws Exception {
		UserDao dao = new UserDaoImpl();
		dao.updatePwd(username,password);
		
	}

	@Override
	public void allupdate(User user,String username) throws Exception {
		UserDao dao = new UserDaoImpl();
		dao.Allupdate(user,username);
		
	}

}
