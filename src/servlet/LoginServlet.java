package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("loginServlet");
		String name = request.getParameter("name");
        String password = request.getParameter("password");
 
        if ("admin".equals(name) && "123".equals(password)) {
        	System.out.println(1);
            request.getSession().setAttribute("name", name);
            response.sendRedirect("listHero");
        } else {
        	System.out.println(2);
            response.sendRedirect("login.html");
        }
	}
}
