package vn.shop.Controllers.User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vn.shop.DAO.userDAO;
import vn.shop.Models.user;

@WebServlet(urlPatterns = {"/login", "/signup"})
public class UserController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String url = req.getRequestURI().toString();
		if (url.contains("login")) {
			RequestDispatcher rd = req.getRequestDispatcher("/decorators/login.jsp");
			rd.forward(req, resp);
				
			}
		}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if (url.contains("login")) {
			signin(req, resp);
			}
		else if(url.contains("signup")) {
			signup(req, resp);
		}
	}
	
	private void signin(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String username = req.getParameter("user");
		String password = req.getParameter("pass");
		userDAO dao = new userDAO();
		user account = dao.login(username, password);
		if (account == null) {
			req.setAttribute("message", "Wrong username or password");
			RequestDispatcher rd = req.getRequestDispatcher("/decorators/login.jsp");
			rd.forward(req, resp);
			
			}
		else {
			System.out.println("account");
			resp.sendRedirect("/laptop/home");
		}
	}
	
	private void signup(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String repassword = req.getParameter("repassword");
		
		if(!password.equals(repassword)) {
			
			}
		
		else {
			userDAO dao = new userDAO();
			user account = dao.check_user(username);
			
			if(account == null) {
				// được sign up 
				req.setAttribute("message", "Sign up successfully.");
				dao.signup(username, email, password);
				resp.sendRedirect("/laptop/login");
				}
			else {
				req.setAttribute("message", "User is exist. Please change username");
				RequestDispatcher rd = req.getRequestDispatcher("/decorators/login.jsp");
				rd.forward(req, resp);
				}
			}
			
		}
}
