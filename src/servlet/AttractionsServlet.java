package servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import dto.Attractions;
import dto.Order;
import dto.User;
import service.AttractionsService;
import service.impl.AttractionsServiceImpl;

/**
 * 跟景点相关的Servlet
 * Servlet implementation class AttractionsServlet
 */
public class AttractionsServlet extends BaseServlet {
	
	public String findAll(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		System.out.println("findAll()方法调用了");
		List<Attractions> plist =null;
		AttractionsService as = new AttractionsServiceImpl();
		try {
			plist = as.findAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		req.getSession().setAttribute("plist", plist);
		System.out.println(plist);
		return null;
	}
	

	

}
