package DoctorLoginLogOutServlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.IOException;
import java.sql.*;
import com.dao.*;
import com.conn.*;
import com.Property.*;
import javax.servlet.annotation.*;
@WebServlet("/doctorLogout")
public class DoctorLogoutServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doGet(req, resp);
		HttpSession session = req.getSession();
		session.removeAttribute("docObj");
		session.setAttribute("success","Doctor logout Succesfully");
		resp.sendRedirect("doctorLogin.jsp");
	}

}
