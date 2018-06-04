package servlet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import dto.Hotel;
import dto.Order;
import dto.User;
import service.AttractionsService;
import service.OrderService;
import service.impl.AttractionsServiceImpl;
import service.impl.OrderServiceImpl;

/**
 * 订单相关的servlet
 * Servlet implementation class OrderServlet
 */
public class OrderServlet extends BaseServlet {

	//下一步到选酒店
	public String next1(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		List<Hotel> hlist = null;
		HttpSession session = req.getSession();
		System.out.println("next1()方法调用了");
		req.setCharacterEncoding("UTF-8");
		Order order = new Order();
		BeanUtils.populate(order, req.getParameterMap());
		
		int selectid = Integer.parseInt(req.getParameter("select"));
		String person_num = req.getParameter("person-num");
		String content = new String(req.getParameter("content").getBytes("iso-8859-1"),"utf-8");
		order.setAtt_id(selectid);
		order.setPeople_num(person_num);
		order.setContent(content);
		System.out.println(order.getStart_data());
		System.out.println(order.getEnd_data());
		System.out.println(order.getAtt_id());
		System.out.println(order.getPeople_num());
		System.out.println(order.getContent());
		User user = (User) req.getSession().getAttribute("user");	
		order.setUserid(user.getId());
		int userid = user.getId();
		System.out.println(order.getUserid());
		if(user == null){
			req.setAttribute("msg", "您还没登录，请先登录！");
			resp.sendRedirect("msg.jsp");
		}
		
		//查找订单id
		OrderService os = new OrderServiceImpl();
		os.commitFirstOrder(order);
		int id = os.findId(userid);
		System.out.println("订单id："+id);
		//查找地点名称
		AttractionsService as = new AttractionsServiceImpl();
        String att_name = as.findName(order.getAtt_id());
		System.out.println(att_name);
		//查找所有酒店
		
		
		hlist = os.findHotel(att_name);
		System.out.println("123");
		System.out.println("hlist"+hlist);
		
		System.out.println("sessionID: " + session.getId());
		session.setAttribute("att_name", att_name);
		session.setAttribute("nextid", id);
		session.setAttribute("hlist", hlist);
		resp.sendRedirect(req.getContextPath()+"/site/hotel.jsp");
		return null;
	}
	
	//下一步到选交通工具
		
	
	
}
