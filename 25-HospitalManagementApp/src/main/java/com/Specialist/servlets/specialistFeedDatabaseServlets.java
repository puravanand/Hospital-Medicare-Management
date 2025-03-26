package com.Specialist.servlets;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.Property.*;
import com.conn.DBconnect;
import com.dao.*;
import java.io.IOException;
import java.sql.*;
import java.util.*;
@WebServlet("/specAdd")

public class specialistFeedDatabaseServlets extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String specFullName= req.getParameter("specFullName");
			queryForSpecialist qs= new queryForSpecialist(DBconnect.getConn());			
			boolean r= qs.addSpec(specFullName);
			HttpSession session= req.getSession();
			if(r) {
				session.setAttribute("success", "Specialist Added successfully");
				resp.sendRedirect("admin/index.jsp");
				
			}else {
				session.setAttribute("failure", "Something went wrong");
				resp.sendRedirect("admin/index.jsp");


			}
			
			
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
	}

}
