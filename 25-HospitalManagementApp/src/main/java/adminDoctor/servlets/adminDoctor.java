package adminDoctor.servlets;

import javax.servlet.http.*;
import javax.servlet.*;

import java.io.IOException;

import com.Property.*;
import com.conn.*;
import com.dao.*;

import javax.servlet.annotation.*;
@WebServlet("/doctorForm")

public class adminDoctor extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

	try {
		String fullNameDoctor= req.getParameter("fullNameDoctor");
		String dob= req.getParameter("dob");
		String qualification= req.getParameter("qualification");
		String select= req.getParameter("select");
		String email= req.getParameter("email");
		String telephone= req.getParameter("telephone");
		String password= req.getParameter("password");
	 DoctorProperty obj= new DoctorProperty(fullNameDoctor,dob
			 ,qualification,select,email,
			 telephone,password
			 );	
queryForDoctors qs = new queryForDoctors(DBconnect.getConn());
boolean r= qs.doctorSaveData(obj);
HttpSession session= req.getSession();

if(r) {
	session.setAttribute("success", "Details Added successfully");
	resp.sendRedirect("admin/doctor.jsp");
} else {
	session.setAttribute("failure", "something went wrong");
	resp.sendRedirect("admin/doctor.jsp");
}
		
	} catch (Exception e) {
		e.printStackTrace();// TODO: handle exception
	}
	
	}

}
