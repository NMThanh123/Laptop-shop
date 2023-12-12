package vn.shop.Controllers.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.shop.BLL.IproviderBLL;
import vn.shop.BLL.IproductBLL;
import vn.shop.BLL.providerBLLimpl;
import vn.shop.DAO.IcartDAO;
import vn.shop.DAO.cartDAOimpl;
import vn.shop.BLL.productBLLimpl;
import vn.shop.Models.product;
import vn.shop.Models.provider;

@WebServlet(urlPatterns = {"/home", "/product-list"})
public class HomeController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	IproviderBLL pvd = new providerBLLimpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if (url.contains("home"))  {
			findALL(req, resp);
		}
		else if (url.contains("login")) {
			RequestDispatcher rd = req.getRequestDispatcher("/decorators/login.jsp");
			rd.forward(req, resp);
		}
		else if (url.contains("product-list")) {
			IproductBLL product = new productBLLimpl();
			String pageStr = req.getParameter("index");
			if(pageStr == null) {
				pageStr = "1";
			}
			int page = Integer.parseInt(pageStr);
			int countP = product.countAll();
			int count = 5;
			int endPage = countP/count;
			if(countP % count != 0) {
				endPage++;
			}
			page = page-1;
			page = page*count+1;
			
			List<product> list1 = product.findAllPage(page-1, count);
			req.setAttribute("list", list1);
			req.setAttribute("countAllProduct", countP);
			
			req.setAttribute("end", endPage);
			req.setAttribute("indexpage", page);
			
			req.getRequestDispatcher("/views/common/product-list.jsp").forward(req, resp);
			
			//System.out.println(endPage);
		}

		IcartDAO model = new cartDAOimpl();
		int count = model.count();
		req.setAttribute("count", count);
	}

	private void findALL(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		List<provider> list = pvd.findALL();
		req.setAttribute("list", list);
		RequestDispatcher rd = req.getRequestDispatcher("/views/common/home.jsp");
		rd.forward(req, resp);
	}
	
	

}
