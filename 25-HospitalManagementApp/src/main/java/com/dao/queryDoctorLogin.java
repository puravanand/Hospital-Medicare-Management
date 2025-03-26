package com.dao;
import java.sql.*;

import com.Property.DoctorProperty;


public class queryDoctorLogin {
private Connection con;

public queryDoctorLogin(Connection con) {
	super();
	this.con = con;
}

// login details of doctors
public DoctorProperty getSpecDocDetails(String email ,String Password)
{
	DoctorProperty obj= null;
try {
	String query= "select * from doctors where email=? && password=?";
	PreparedStatement psmt= con.prepareStatement(query);
	psmt.setString(1,email);
	psmt.setString(2,Password);
	ResultSet rs= psmt.executeQuery();
	while(rs.next()) {
		obj = new DoctorProperty();
		obj.setId(rs.getInt(1));
		obj.setFullName(rs.getString(2));
		obj.setDOB(rs.getString(3));
		obj.setQualifications(rs.getString(4));
		obj.setSpecialist(rs.getString(5));
		obj.setEmail(rs.getString(6));
		obj.setMobileNo(rs.getString(7));
		obj.setPassword(rs.getString(8));
		
	}
	
	
} catch (Exception e) {
	e.printStackTrace();
	
	
	
	// TODO: handle exception
}
	return obj;
	
}




}
