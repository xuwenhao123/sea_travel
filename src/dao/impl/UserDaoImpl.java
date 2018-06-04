package dao.impl;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import dao.UserDao;
import dto.User;
import utils.DataSourceUtils;

public class UserDaoImpl implements UserDao {

	@Override
	public User getByUsernameAndPwd(String username, String password) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = " select * from user where username = ? and password = ?";
		
		return qr.query(sql, new BeanHandler<>(User.class), username,password);
	}

	@Override
	public void add(User user) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into user(username,password,email,name,sex,birthday,hobby,idcard,address,age) values(?,?,?,?,?,?,?,?,?,?);";
		qr.update(sql, user.getUsername(),user.getPassword(),
				user.getEmail(),user.getName(),user.getSex(),
				user.getBirthday(),user.getHobby(),user.getIdcard(),
				user.getAddress(),user.getAge());
		
		
	}

	@Override
	public void updatePwd(String username,String password) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="update user set password ='"+password+"' where username ='"+username+"'";
		qr.update(sql);
	}

	@Override
	public void Allupdate(User user,String username) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update user set email=?,name=?,sex=?,birthday=?,hobby=?,address=?,age=? where username = username";
		qr.update(sql, user.getEmail(),user.getName(),user.getSex(),
				user.getBirthday(),user.getHobby(),user.getAddress(),user.getAge());
		
	}

}
