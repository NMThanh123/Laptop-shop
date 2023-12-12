package vn.shop.Controllers.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.shop.DAO.productDAOimpl;
import vn.shop.Models.product;

@WebServlet(urlPatterns = {"/search"})
public class SearchController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	String search1 = "";
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String url = req.getRequestURI().toString();
		if (url.contains("search")) {
			search(req, resp);
				
			}
		}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if (url.contains("search")) {
			search(req, resp);
			}
	}

	private void search(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		// TODO Auto-generated method stub
		productDAOimpl dao = new productDAOimpl();
		String search = req.getParameter("txt");
		if (search != null) {
			search1 = search;
		}
		int countP = dao.countByname(search1);
		String pageStr = req.getParameter("index");
		if(pageStr == null) {
			pageStr = "1";
		}
		int page = Integer.parseInt(pageStr);
		
		int count = 5;
		int endPage = countP/count;
		if(countP % count != 0) {
			endPage++;
		}
		page = page-1;
		page = page*count+1;
		List<product> list1 = dao.findAllPage_Byname(search1, page-1, count);
		
		req.setAttribute("list", list1);
		req.setAttribute("countAllProduct", countP);
		
		req.setAttribute("end", endPage);
		req.setAttribute("indexpage", page);
		
		
		req.getRequestDispatcher("/views/common/product-search.jsp").forward(req, resp);
		
	}
}
