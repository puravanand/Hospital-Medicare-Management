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
@WebServlet("/doctorLogin")

public class DoctorLoginServlet  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String doctorLoginEmail= req.getParameter("doctorLoginEmail");
	    String doctorLoginPassword=req.getParameter("doctorLoginPassword");
	    queryDoctorLogin q= new queryDoctorLogin(DBconnect.getConn());
	    DoctorProperty obj= q.getSpecDocDetails(doctorLoginEmail, doctorLoginPassword);
	    HttpSession session = req.getSession();
	    
	    if(obj !=null) {
	    	session.setAttribute("docObj",obj);
	    	resp.sendRedirect("doctors/index.jsp");
	    }else {
	    	session.setAttribute("failure","Invalid Email or  Password");
	    	resp.sendRedirect("doctorLogin.jsp");

	    }
	    
	    
	    
	    
	    
	}
	

}
