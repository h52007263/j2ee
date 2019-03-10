package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AuthFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request=(HttpServletRequest) req;
		HttpServletResponse response=(HttpServletResponse) res;
		
		String uri=request.getRequestURI();
		if(uri.endsWith(".png")) {
			System.out.println("访问图片了");
			chain.doFilter(request, response);
		}
		if(uri.endsWith("login.html")||uri.endsWith("login")) {
			System.out.println("是login.html  login   AuthFilter放行了");
			chain.doFilter(request, response);
			return;
		}
		
		String name=(String)request.getSession().getAttribute("name");
		if(null==name) {
			response.sendRedirect("login.html");
		}
		
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
