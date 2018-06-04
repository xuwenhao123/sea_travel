package servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class BaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		Class clazz = this.getClass();
		System.out.println("baseServlet："+this);
		String m = request.getParameter("method");
		System.out.println("baseServlet："+m);
		Method method = clazz.getDeclaredMethod(m, HttpServletRequest.class,HttpServletResponse.class);
		
		String s = (String) method.invoke(this, request,response);
		System.out.println("baseServlet："+s);
		if(s!=null){
			request.getRequestDispatcher(s).forward(request, response);
		}
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		
	}

}
