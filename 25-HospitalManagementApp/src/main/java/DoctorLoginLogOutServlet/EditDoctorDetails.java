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
@WebServlet("/editDoctorForm")
public class EditDoctorDetails  extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			int Id= Integer.parseInt(req.getParameter("id"));
			String fullNameDoctor= req.getParameter("fullNameDoctor");
			String dob= req.getParameter("dob");
		
			String qualification= req.getParameter("qualification");
			String select= req.getParameter("select");
			String email= req.getParameter("email");
			String telephone= req.getParameter("telephone");
//			String password= req.getParameter("password");
		 DoctorProperty obj= new DoctorProperty(Id,fullNameDoctor,dob
				 ,qualification,select,email,
				 telephone
				 );	
		
		queryForDoctors qs = new queryForDoctors(DBconnect.getConn());
		boolean r= qs.doctorUpdateDatabase(obj);
		HttpSession session= req.getSession();

		if(r) {
		session.setAttribute("successE", "Details Updated successfully");
		resp.sendRedirect("doctors/EditProfile.jsp");
		} else {
		session.setAttribute("failureE", "something went wrong");
		resp.sendRedirect("doctors/EditProfile.jsp");
		}
			
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}


	}

	
}
