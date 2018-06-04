package servlet;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;

import converter.myconverter;
import dto.User;
import service.UserService;
import service.impl.UserServiceImpl;
import utils.MD5Utils;
import utils.UUIDUtils;


public class UserServlet extends BaseServlet {

	//测试
	public String add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("执行");
		return null;
	}
	
	/*
	 * 登录
	 */
	public String login(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");

		System.out.println(username);
		System.out.println(password);
      //password = MD5Utils.md5(password);
		
		UserService s = new UserServiceImpl();
		User user = s.login(username,password);
		System.out.println("user is "+user);
		if(user==null){
			req.setAttribute("msg", "帐号或者密码不匹配");
			return "msg.jsp";
		}
		System.out.println("登录成功！");
		req.getSession().setAttribute("user", user);
		resp.sendRedirect(req.getContextPath()+"/");
		return null;
	}
	
	/*
	 * 退出登录
	 */
	public String logout(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		req.getSession().invalidate();
		
		resp.sendRedirect(req.getContextPath()+"/");
		return null;
	}
	
	/*
	 * 注册
	 */
	public String register(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		User user =	new User();
		BeanUtils.populate(user, req.getParameterMap());
		String name=new String(user.getName().getBytes("iso-8859-1"),"utf-8");
		String sex=new String(user.getSex().getBytes("iso-8859-1"),"utf-8");
		String hobby=new String(user.getHobby().getBytes("iso-8859-1"),"utf-8");
		String address=new String(user.getAddress().getBytes("iso-8859-1"),"utf-8");
		user.setName(name);
		user.setSex(sex);
		user.setHobby(hobby);
		user.setAddress(address);
		UserService s = new UserServiceImpl();
		s.register(user);
		req.setAttribute("msg", "用户已经成功注册");
		resp.sendRedirect(req.getContextPath()+"/");
		return null;
	}
	
	
	
	/*
	 * 修改密码
	 */
	public String updatePwd(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String oldpassword = req.getParameter("oldpassword");
		String password = req.getParameter("password");
		System.out.println("执行到了updatePwd()函数");  
		User user = (User) req.getSession().getAttribute("user");
		String username= user.getUsername();
		System.out.println(user.getPassword());
		if(user.getPassword().equals(oldpassword)){
			System.out.println("旧密码正确");
			UserService s = new UserServiceImpl();
			s.update(username,password);
		}
		
		System.out.println("修改成功！");
		req.setAttribute("msg", "修改成功");
		resp.sendRedirect(req.getContextPath()+"/site/updateSuccess.jsp");
		return null;
	}
	
	/*
	 * 修改个人信息
	 */
	public String updateAll(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		User user =	new User();
		ConvertUtils.register(new myconverter(), java.util.Date.class);
		BeanUtils.populate(user, req.getParameterMap());
		String username = user.getUsername();
		String name=new String(user.getName().getBytes("iso-8859-1"),"utf-8");
		String sex=new String(user.getSex().getBytes("iso-8859-1"),"utf-8");
		String hobby=new String(user.getHobby().getBytes("iso-8859-1"),"utf-8");
		String address=new String(user.getAddress().getBytes("iso-8859-1"),"utf-8");
		user.setName(name);
		user.setSex(sex);
		user.setHobby(hobby);
		user.setAddress(address);
		UserService s = new UserServiceImpl();
		s.allupdate(user,username);
		req.setAttribute("msg", "修改成功");
		req.getSession().invalidate();
		resp.sendRedirect(req.getContextPath()+"/site/updateSuccess.jsp");
		return null;
	}
	
}
