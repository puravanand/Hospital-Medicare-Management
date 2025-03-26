package UserLoginLogOut.servlet;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.Property.*;
import com.conn.DBconnect;
import com.dao.*;
import java.io.IOException;
import java.sql.*;
import java.util.*;
@WebServlet("/changePassword")
public class userChangePassword extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		int uid= Integer.parseInt(req.getParameter("id"));
		String old= req.getParameter("old");
		String newP = req.getParameter("newP");
		HttpSession session = req.getSession();
		 queries q = new queries(DBconnect.getConn());
		 if(q.checkOldPassword(uid, old)){
			 if(q.NewPassword(uid, newP)) {
				 session.setAttribute("success", "Password Changed successfully");
					resp.sendRedirect("ChangePassword.jsp");
			 }
			 
			 
			 
		 }else {
			session.setAttribute("failure", "old password Incorrect");
			resp.sendRedirect("ChangePassword.jsp");
			 
			 
		 }
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

	
	
	
	
}
