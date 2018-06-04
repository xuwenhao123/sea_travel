package servlet;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.Traffic;
import service.OrderService;
import service.TrafficService;
import service.impl.OrderServiceImpl;
import service.impl.TrafficServiceImpl;
public class HotelServlet extends BaseServlet {
	

       public String toTraf(HttpServletRequest req, HttpServletResponse resp) throws Exception{
    	HttpSession session = req.getSession();
	    String hid = req.getParameter("ra");
	    System.out.println("sessionID: " + req.getSession().getId());
	    Integer oid = (Integer) req.getSession().getAttribute("nextid");
	    System.out.println("酒店id="+hid);
	    System.out.println("订单id="+oid);
	    OrderService os = new OrderServiceImpl();
	    //插入酒店
	    os.insertHotel(hid,oid);
	    //查找所有交通工具
	    List<Traffic> tlist = null;
	    TrafficService ts = new TrafficServiceImpl();
	    tlist = ts.findAllTraf();
	    System.out.println(tlist);
	    session.setAttribute("tlsit", tlist);
	    resp.sendRedirect(req.getContextPath()+"/site/trafficTools.jsp");
		return null;
		}
}
