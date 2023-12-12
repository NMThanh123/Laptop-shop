package vn.shop.Controllers.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.shop.BLL.IcartBLL;
import vn.shop.BLL.cartBLLimpl;
import vn.shop.DAO.IcartDAO;
import vn.shop.DAO.cartDAOimpl;
import vn.shop.DAO.productDAOimpl;
import vn.shop.Models.cart;
import vn.shop.Models.product;

@WebServlet(urlPatterns = {"/product","/add-to-cart","/my-cart","/delete-cart","/go-to-pay","/paid"})
public class DetailController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	IcartBLL cartBLL = new cartBLLimpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if(url.contains("product")) {
			String ID = req.getParameter("id");
			int id = Integer.parseInt(ID);
			
			productDAOimpl dao = new productDAOimpl();
			product p = dao.find_one(id);
			req.setAttribute("list", p);
			req.getRequestDispatcher("/views/common/detail.jsp").forward(req, resp);
			
		}else if(url.contains("add-to-cart")) {
			insert(req, resp);
		}else if(url.contains("my-cart")) {
			findAll(req, resp);
		}else if(url.contains("delete-cart")) {
			delete(req, resp);
		}else if(url.contains("go-to-pay")) {
			IcartBLL cart = new cartBLLimpl();
			int total = cart.total();
			String s = String.format("%,2d", total);
			req.setAttribute("total", s);
			req.getRequestDispatcher("/views/common/payment.jsp").forward(req, resp);
		}
		else if(url.contains("paid")) {
			IcartDAO cart = new cartDAOimpl();
			cart.deleteAll();
			RequestDispatcher rd = req.getRequestDispatcher("my-cart");
			rd.forward(req, resp);
			
		}
		IcartDAO model = new cartDAOimpl();
		int count = model.count();
		req.setAttribute("count", count);
	}


	private void delete(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		int id = Integer.parseInt(req.getParameter("id"));
		IcartBLL cart = new cartBLLimpl();
		try {
			cart.delete(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		resp.sendRedirect("/laptop/my-cart");
	}


	private void findAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IcartBLL cart = new cartBLLimpl();
		int total = cart.total();
		String s = String.format("%,2d", total);
		List<cart> list = cartBLL.findAll();
		req.setAttribute("list", list);
		req.setAttribute("total", s);
		RequestDispatcher rd = req.getRequestDispatcher("/views/common/my-cart.jsp");
		rd.forward(req, resp);
	}

	private void insert(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		int id = Integer.parseInt(req.getParameter("id"));
		try {
			cartBLL.insert(id);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		req.setAttribute("count", 1);
//		req.getRequestDispatcher("home").forward(req, resp);
		resp.sendRedirect("/laptop/home");
		
	}
}
