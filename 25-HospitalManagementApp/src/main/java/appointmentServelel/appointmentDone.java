package appointmentServelel;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.IOException;
import java.sql.*;
import com.dao.*;
import com.conn.*;
import com.Property.*;
import javax.servlet.annotation.*;
@WebServlet("/appointment")
public class appointmentDone extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		int user_id= Integer.parseInt(req.getParameter("user_Id"));
		String fullName= req.getParameter("name");
		String gender= req.getParameter("gender");
		String age= req.getParameter("age");
		String date= req.getParameter("date");
		String eamil= req.getParameter("eamil");
		String number= req.getParameter("number");
		String diseases= req.getParameter("diseases");
		int doc_id= Integer.parseInt(req.getParameter("select"));
		String address= req.getParameter("address");
		
		AppointmentProperty obj= new AppointmentProperty(
				user_id,fullName,gender,age
				,date,eamil,number,diseases
				,doc_id,address,"pending");
				
		queryForAppointment q= new queryForAppointment(DBconnect.getConn());
		HttpSession session = req.getSession();
		if(q.insertAppointmentData(obj)) {
			session.setAttribute("success","Appointment Successfully");
				resp.sendRedirect("appointmentLogin.jsp");	
		}else {
			session.setAttribute("failure","Appointment fail");
			resp.sendRedirect("appointmentLogin.jsp");
		}

				
				
				
				
				
				
				
				
				
				

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
