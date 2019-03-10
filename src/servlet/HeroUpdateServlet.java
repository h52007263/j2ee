package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Hero;
import dao.HeroDAO;

public class HeroUpdateServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Hero hero=new Hero();
		hero.setId(Integer.parseInt(req.getParameter("id")));
		hero.setName(req.getParameter("name"));
		hero.setHp(Float.parseFloat(req.getParameter("hp")));
		hero.setDamage(Integer.parseInt(req.getParameter("damage")));
		
		new HeroDAO().update(hero);
		resp.sendRedirect("listHero");
	}
}
