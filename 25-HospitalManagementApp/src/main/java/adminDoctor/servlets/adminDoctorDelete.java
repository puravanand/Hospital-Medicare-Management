package adminDoctor.servlets;

import javax.servlet.http.*;
import javax.servlet.*;

import java.io.IOException;

import com.Property.*;
import com.conn.*;
import com.dao.*;

import javax.servlet.annotation.*;

@WebServlet("/deleteDoctor")
public class adminDoctorDelete extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doGet(req, resp);
		int id = Integer.parseInt(req.getParameter("Id"));
		queryForDoctors q = new queryForDoctors(DBconnect.getConn());
		boolean r = q.deleteDataFromDatabase(id);
		HttpSession session = req.getSession();
		if (r) {
			session.setAttribute("success", "Details Deleted successfully");
			resp.sendRedirect("admin/view_Doctor.jsp");
		} else {
			session.setAttribute("failure", "something went wrong");
			resp.sendRedirect("admin/view_Doctor.jsp");
		}

	}

}
