package com.dao;
import java.sql.*;
import com.Property.*;
public class queries {
private  Connection con;
//field constructor

public queries(Connection con) {
	super();
	this.con = con;
}
  

//SignUpInsert query
public boolean  SaveSignUpData(SignUpProperty pr) {
	boolean f=false;
	try {
		String query="insert into signupdata1 (FullName,Email,UserName, Password,City,Country,PinCode) values(?,?,?,?,?,?,? )";
		PreparedStatement psmt= con.prepareStatement(query);
		psmt.setString(1,pr.getFullNameSingUp());
		psmt.setString(2, pr.getEmailSingUp());
		psmt.setString(3, pr.getUserNameSingUp());
		psmt.setString(4,pr.getUserNamePassword());
		psmt.setString(5, pr.getCitySingUp());
		psmt.setString(6, pr.getSelectSingUp());
		psmt.setInt(7, pr.getZipSingUp());
		int a= psmt.executeUpdate();
		if(a>0) {
			f=true;
		}
		
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
	return f;
}

//check email and password of user from database
public SignUpProperty isvalidEmailPassword(String userLoginEmail,String userLoginPassword ) {
	SignUpProperty pr=null;
	try {
		String query= "select * from signupdata1 where Email=? && Password=? ";
		PreparedStatement psmt= con.prepareStatement(query);
		psmt.setString(1, userLoginEmail);
		psmt.setString(2,userLoginPassword);
		ResultSet rs= psmt.executeQuery();
		while(rs.next()) {
			pr= new SignUpProperty();
			pr.setId(rs.getInt(1));
			pr.setFullNameSingUp(rs.getString(2));
			pr.setEmailSingUp(rs.getString(3));
			pr.setUserNameSingUp(rs.getString(4));
			pr.setUserNamePassword(rs.getString(5));
			pr.setCitySingUp(rs.getString(6));
			pr.setSelectSingUp(rs.getString(7));
			pr.setZipSingUp(rs.getInt(8));
			
		}
		
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
	return pr;
}
// check old password is correct or not
public boolean checkOldPassword(int uid,String Password) {
	boolean f=false;
	try {
		String query= "select * from signupdata1 where id=? && Password=? ";
		PreparedStatement psmt= con.prepareStatement(query);
psmt.setInt(1, uid);
psmt.setString(2,Password);
ResultSet rs= psmt.executeQuery();



while (rs.next()) {
	f=true;
	
}
		
		
		
		
		
	}catch (Exception e) {
	e.printStackTrace();	// TODO: handle exception
 
	
	}
	
	return f;
}
//New password

public boolean NewPassword(int uid,String Password) {
	boolean f=false;
	try {
		String query= "update  signupdata1 set Password=? where id=? ";
		PreparedStatement psmt= con.prepareStatement(query);
psmt.setInt(2, uid);
psmt.setString(1,Password);
int a = psmt.executeUpdate();
if(a>0) {
	f=true;
}



		
		
		
		
		
	}catch (Exception e) {
	e.printStackTrace();	// TODO: handle exception
 
	
	}
	
	return f;
}














}


