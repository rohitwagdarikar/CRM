import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
			String uname = req.getParameter("username");
			String pass = req.getParameter("password");
			HttpSession session = req.getSession();
			PrintWriter out = resp.getWriter();
			if(uname.equals("servlet") && pass.equals("java"))
			{
				session.setAttribute("unameSession", uname);
				resp.sendRedirect("welcome.jsp");
			}else
			{
				out.print("<Br> <font color = 'red' > Enter Correct Username and Password </font></br>");
				RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
				rd.include(req, resp);
				//resp.sendRedirect("login.jsp");
			}
	}
	
	
}
