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
@WebServlet("/comment")
public class UpdateAppointmentStatus extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		int id = Integer.parseInt(req.getParameter("id"));
		int did = Integer.parseInt(req.getParameter("did"));
		String status = req.getParameter("comm");
		queryForAppointment q =new queryForAppointment(DBconnect.getConn());

		boolean r= q.updateStatus(status, id, did);
HttpSession session =req.getSession();		
		if(r) {
	session.setAttribute("success","Commented Updated");
	resp.sendRedirect("doctors/patient.jsp");
}else {
	session.setAttribute("failure","Something went Wrong");
	resp.sendRedirect("doctors/patient.jsp");
	
}



	}

}
