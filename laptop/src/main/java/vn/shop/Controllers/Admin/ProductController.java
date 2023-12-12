package vn.shop.Controllers.Admin;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javax.servlet.annotation.MultipartConfig;

import vn.shop.BLL.IproductBLL;
import vn.shop.BLL.productBLLimpl;
import vn.shop.DAO.IcartDAO;
import vn.shop.DAO.cartDAOimpl;
import vn.shop.DAO.productDAOimpl;
import vn.shop.Models.product;
import vn.shop.Utils.Constant;
import vn.shop.Utils.UploadUtils;

@MultipartConfig
@WebServlet(urlPatterns = {"/delete-product","/edit-product","/add-product","/update-product","/Aspire","/Nitro","/Triton","/TUF",
		"/ROG","/Victus","/Omen","/Inspiron",
		"/Vostro", "/Katana", "/Cyborg"})
public class ProductController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	IproductBLL product = new productBLLimpl();
	int id = 0;
	String cate = "";
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		
		if (url.contains("add-product")) {
			RequestDispatcher rd = req.getRequestDispatcher("/views/common/addproduct.jsp");
			rd.forward(req, resp);
		}
		else if (url.contains("edit-product")) {
			IproductBLL product = new productBLLimpl();
			List<product> list = product.findALL();
			req.setAttribute("list", list);
			RequestDispatcher rd = req.getRequestDispatcher("/views/common/edit-product.jsp");
			rd.forward(req, resp);
		}
		
		else if (url.contains("update-product")) {
			int id = Integer.parseInt(req.getParameter("id"));
			productDAOimpl dao = new productDAOimpl();
			product p = dao.find_one(id);
			req.setAttribute("product", p);
			RequestDispatcher rd = req.getRequestDispatcher("/views/common/updateproduct.jsp");
			rd.forward(req, resp);
		}
		else if(url.contains("delete-product")) {
			System.out.println(23333);
			delete(req,resp);
		}
		else {
			view(url, req, resp);
		}
		IcartDAO model = new cartDAOimpl();
		int count = model.count();
		req.setAttribute("count", count);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url =req.getRequestURL().toString();
		if(url.contains("add-product")) {
			insert(req,resp);
		}
		else if(url.contains("update-product")) {
			update(req,resp);
		}
		
	}
	private void update(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		//dua du lieu vao model
		product model = new product();
		
		String id1  = req.getParameter("productID");
		int ID1 = Integer.parseInt(id1);
		String id2  = req.getParameter("categoryID");
		int ID2 = Integer.parseInt(id2);
		String name = req.getParameter("name");
		String desc = req.getParameter("desc");
		String id3  = req.getParameter("price");
		int ID3 = Integer.parseInt(id3);
		String id4  = req.getParameter("amount");
		int ID4 = Integer.parseInt(id4);
		
		model.setProductID(ID1);
		model.setCategoryID(ID2);
		model.setName(name);
		model.setDescription(desc);
		model.setPrice(ID3);
		model.setAmount(ID4);
		
		product.update(model);
		
		resp.sendRedirect("/laptop/edit-product");
		
	}

	private void insert(HttpServletRequest req, HttpServletResponse resp) throws IOException,  ServletException{
		resp.setCharacterEncoding("UTF-8");
		
		product model = new product();
		
		String id1  = req.getParameter("productID");
		int ID1 = Integer.parseInt(id1);
		String id2  = req.getParameter("categoryID");
		int ID2 = Integer.parseInt(id2);
		String name = req.getParameter("name");
		String desc = req.getParameter("desc");
		String id3  = req.getParameter("price");
		int ID3 = Integer.parseInt(id3);
		String id4  = req.getParameter("amount");
		int ID4 = Integer.parseInt(id4);
		
		String fileName = "" + System.currentTimeMillis();
		UploadUtils.processUpload("image", req, Constant.DIR + "\\", fileName);
		
		model.setProductID(ID1);
		model.setCategoryID(ID2);
		model.setName(name);
		model.setDescription(desc);
		model.setImage("uploads/" + fileName + ".jpg");
		model.setPrice(ID3);
		model.setAmount(ID4);
		product.insert(model);
		resp.sendRedirect(req.getContextPath() + "/edit-product");
		
	}

	private void view(String url, HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		// TODO Auto-generated method stub
		if (url.contains("Aspire"))  {
			id = 1; cate="Aspire";
			
		}
		else if (url.contains("Nitro"))  {
			id = 2;cate="Nitro";
			
		}
		else if (url.contains("Triton"))  {
			id = 3;cate="Triton";
			
		}
		else if (url.contains("TUF"))  {
			id = 4;cate="TUF";
			
		}
		else if (url.contains("ROG"))  {
			id = 5;cate="ROG";
			
		}
		else if (url.contains("Victus"))  {
			id = 6;cate="Victus";
			
		}
		else if (url.contains("Omen"))  {
			id = 7;cate="Omen";
			
		}
		else if (url.contains("Inspiron"))  {
			id = 8;cate="Inspiron";
			
		}
		else if (url.contains("Vostro"))  {
			id = 9;cate="Vostro";
			
		}
		else if (url.contains("Katana"))  {
			id = 10;cate="Katana";
			
		}
		else if (url.contains("Cyborg"))  {
			id = 11;cate="Cyborg";
			
		}
		List<product> listproduct = product.find_by_cate(id);
		productDAOimpl pro = new productDAOimpl();
//		listproduct = pro.findAllPage_byID(id, id, id)
;		String pageStr = req.getParameter("index");
		if(pageStr == null) {
			pageStr = "1";
		}
		int page = Integer.parseInt(pageStr);
		int countP = listproduct.size();
		int count = 5;
		int endPage = countP/count;
		if(countP % count != 0) {
			endPage++;
		}
		page = page-1;
		page = page*count+1;
		List<product> list1 = pro.findAllPage_byID(id, page-1, count);
		System.out.println(list1.size());
		req.setAttribute("list", list1);
		req.setAttribute("countAllProduct", countP);
		
		req.setAttribute("end", endPage);
		req.setAttribute("indexpage", page);
		req.setAttribute("cate", cate);
		
		req.getRequestDispatcher("/views/common/product.jsp").forward(req, resp);
		
		}
	
	private void delete(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		int id = Integer.parseInt(req.getParameter("id"));
		System.out.println(id);
		try {
			product.delete(id);
			req.setAttribute("message", "Xoa thanh cong");
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("error","that bai");
		}
		
		resp.sendRedirect("/laptop/edit-product");
	}
	
	
	}

