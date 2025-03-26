package UserLoginLogOut.servlet;
import javax.servlet.http.*;

import com.Property.SignUpProperty;
import com.conn.DBconnect;
import com.dao.queries;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.*;
@WebServlet("/userLogout")
public class UserLogout extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		session.removeAttribute("userObj");
		session.setAttribute("logout", "User LogOut Successfully");
		resp.sendRedirect("userLogin.jsp");
	}

}
