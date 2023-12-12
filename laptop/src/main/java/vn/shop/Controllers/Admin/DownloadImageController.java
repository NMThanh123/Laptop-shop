package vn.shop.Controllers.Admin;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.IOUtils;
import vn.shop.Utils.Constant;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/image")
public class DownloadImageController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		String filename = req.getParameter("fname");
		File file = new File(Constant.DIR + "/" + filename);
		resp.setContentType("image/jpeg");
		
		if (file.exists()) {
			
			IOUtils.copy(new FileInputStream(file), resp.getOutputStream());
		}
		
	}

}
