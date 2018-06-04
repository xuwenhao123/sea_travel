package servlet;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.Traffic;
import service.OrderService;
import service.TrafficService;
import service.impl.OrderServiceImpl;
import service.impl.TrafficServiceImpl;

/**
 * 服务者相关的Servlet
 * Servlet implementation class ServicerServlet
 */
public class ServicerServlet extends BaseServlet {
	
	 public String toServicer(HttpServletRequest req, HttpServletResponse resp) throws Exception{
	    	HttpSession session = req.getSession();
		    String tid = req.getParameter("ra");
		    Integer oid = (Integer) req.getSession().getAttribute("nextid");
		    System.out.println("交通id="+tid);
		    System.out.println("订单id="+oid);
		    OrderService os = new OrderServiceImpl();
		    //插入交通工具
		    os.insertTraf(tid,oid);
		    System.out.println("交通的类到了");
			return null;
			}
	

}
