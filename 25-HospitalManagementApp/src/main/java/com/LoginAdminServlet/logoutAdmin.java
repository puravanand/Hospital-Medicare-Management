package com.LoginAdminServlet;
import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/logOutAdmin")
public class logoutAdmin extends HttpServlet {
	// anchor tag generated doget method
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		session.removeAttribute("adminObj");
		
		session.setAttribute("success", "Admin Logout Successfully");
		resp.sendRedirect("adminLogin.jsp");
		
		
	}

	
}
