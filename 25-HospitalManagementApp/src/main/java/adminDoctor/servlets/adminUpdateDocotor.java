package adminDoctor.servlets;
import javax.servlet.http.*;

import com.Property.DoctorProperty;
import com.conn.DBconnect;
import com.dao.queryForDoctors;

import java.util.*;
import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
@WebServlet("/updateDoctor")
public class adminUpdateDocotor extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
	try {
		int Id= Integer.parseInt(req.getParameter("Id"));
		String fullNameDoctor= req.getParameter("fullNameDoctor");
		String dob= req.getParameter("dob");
	
		String qualification= req.getParameter("qualification");
		String select= req.getParameter("select");
		String email= req.getParameter("email");
		String telephone= req.getParameter("telephone");
		String password= req.getParameter("password");
	 DoctorProperty obj= new DoctorProperty(Id,fullNameDoctor,dob
			 ,qualification,select,email,
			 telephone,password
			 );	
	
	queryForDoctors qs = new queryForDoctors(DBconnect.getConn());
	boolean r= qs.doctorUpdateDatabase(obj);
	HttpSession session= req.getSession();

	if(r) {
	session.setAttribute("success", "Details Updated successfully");
	resp.sendRedirect("admin/view_Doctor.jsp");
	} else {
	session.setAttribute("failure", "something went wrong");
	resp.sendRedirect("admin/view_Doctor.jsp");
	}
		
	} catch (Exception e) {
		e.printStackTrace();// TODO: handle exception
	}

	
	
	}
}
	
