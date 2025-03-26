package com.LoginAdminServlet;
import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.Property.SignUpProperty;

import javax.servlet.annotation.*;
@WebServlet("/adminLogin")
public class AdminLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String adminLoginEmail=req.getParameter("adminLoginEmail");
			String adminLoginPassword= req.getParameter("adminLoginPassword");
			 HttpSession session = req.getSession();
			 if(adminLoginEmail.equals("purav_223098@saitm.org") && adminLoginPassword.equals("purav_223098")) {
				 session.setAttribute("adminObj", new SignUpProperty());
				 resp.sendRedirect("admin/index.jsp");
			 }else {
				 session.setAttribute("failure","Incorrect Password or Email");
resp.sendRedirect("adminLogin.jsp");
				 
			 }

		}catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
	}

}
