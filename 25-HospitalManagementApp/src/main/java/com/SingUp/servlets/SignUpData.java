package com.SingUp.servlets;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.Property.*;
import com.conn.DBconnect;
import com.dao.*;
import java.io.IOException;
import java.sql.*;
import java.util.*;
@WebServlet("/signUpForm")

public class SignUpData extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String fullNameSignUp=req.getParameter("fullNameSingUp");
		String emailSignUp=req.getParameter("emailSignUp");
		String userNameSignUp=req.getParameter("userNameSignUp");
		String passwordSignUp=req.getParameter("passwordSignUp");

		String citySignUp=req.getParameter("citySignUp");
		String selectSignUp=req.getParameter("selectSignUp");
		int zipSignUp=Integer.parseInt(req.getParameter("zipSignUp"));
//		System.out.println(fullNameSignUp+emailSignUp + userNameSignUp+zipSignUp
//				+citySignUp+selectSignUp
//				
//				);
//		
		SignUpProperty pr= new SignUpProperty(fullNameSignUp,emailSignUp,
				userNameSignUp,passwordSignUp,citySignUp,selectSignUp,zipSignUp);
   queries connect= new queries(DBconnect.getConn());
   boolean r= connect.SaveSignUpData(pr);
   HttpSession session = req.getSession();
   
   if(r) {
	   session.setAttribute("success", "Registered Successfully");
	   resp.sendRedirect("signUp.jsp");
	   
	   
   }else {
	   session.setAttribute("failure", "Registration fail!");
	   resp.sendRedirect("signUp.jsp");
	   
   }
		
	}

}
