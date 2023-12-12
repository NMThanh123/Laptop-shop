package vn.shop.Controllers.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.shop.BLL.IcategoryBLL;
import vn.shop.BLL.categoryBLLimpl;
import vn.shop.DAO.IcartDAO;
import vn.shop.DAO.cartDAOimpl;
import vn.shop.Models.category;

@WebServlet(urlPatterns = {"/Acer", "/Asus", "/Dell", "/HP", "/MSI"})
public class CategoryController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	IcategoryBLL cate = new categoryBLLimpl();
	int id = 0;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		
		if (url.contains("Acer"))  {
			id = 1;
			
		}
		else if (url.contains("Asus"))  {
			id = 2;
			
		}
		else if (url.contains("HP"))  {
			id = 3;
			
		}
		else if (url.contains("Dell"))  {
			id = 4;
			
		}
		else if (url.contains("MSI"))  {
			id = 5;
			
		}
		IcartDAO model = new cartDAOimpl();
		int count = model.count();
		req.setAttribute("count", count);
		
		List<category> listcate = cate.find_by_provider(id);
		req.setAttribute("list", listcate);
		RequestDispatcher rd = req.getRequestDispatcher("/views/common/category.jsp");
		rd.forward(req, resp);
		
	}

}
