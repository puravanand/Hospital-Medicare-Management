package UserLoginLogOut.servlet;
import javax.servlet.http.*;

import com.Property.SignUpProperty;
import com.conn.DBconnect;
import com.dao.queries;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.*;
@WebServlet("/userLogin")
public class UserLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String userLoginEmail=req.getParameter("userLoginEmail");
		String userLoginPassword = req.getParameter("userLoginPassword");
		queries q= new queries(DBconnect.getConn());
		SignUpProperty data= q.isvalidEmailPassword(userLoginEmail, userLoginPassword);
		HttpSession session = req.getSession();
	if(data!=null) {
		session.setAttribute("userObj",data);
		resp.sendRedirect("index.jsp");
	} else {
		session.setAttribute("failure","Invalid Email or Password");
	resp.sendRedirect("userLogin.jsp");
	}
	
	
	
	
	}

}
