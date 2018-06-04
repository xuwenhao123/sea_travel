package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Servicer;
import service.ServicerService;
import service.impl.ServicerServiceImpl;



/**
 * Servlet implementation class indexServlet
 */
public class indexServlet extends HttpServlet {
	
	 @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		 System.out.println("调用了indexServlet");
		 ServicerService ss = new ServicerServiceImpl();
		 List<Servicer> slist=null;
		 try {
			slist = ss.findServicer();
			System.out.println(slist);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 
		 req.getSession().setAttribute("slist",slist); 
		
		 System.out.println(req.getAttribute("slist"));
		
		 
		 
	}
	 
	 @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 doGet(req, resp);
	}
}
