package com.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.*;
import javax.servlet.http.*;



import com.Property.AppointmentProperty;
import com.conn.DBconnect;

public class queryForAppointment {
	private Connection con;

	public queryForAppointment(Connection con) {
		super();
		this.con = con;
		
		
	}
	
	public boolean insertAppointmentData(AppointmentProperty pr) {
		boolean f=false;
		try {
			String query= "insert into appointmentDetails (user_id,fullName,gender,age,appoint_date,email,phone,diseases,doc_Id,address,status) values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement psmt= con.prepareStatement(query);
			psmt.setInt(1,pr.getUser_Id());
			psmt.setString(2, pr.getFullName());
			psmt.setString(3,pr.getGender());
			psmt.setString(4,pr.getAge());
			psmt.setString(5,pr.getAppoint_date());
			psmt.setString(6,pr.getEmail());
			psmt.setString(7,pr.getPhone());
			psmt.setString(8,pr.getDiseases());
			psmt.setInt(9,pr.getDoc_Id());
			psmt.setString(10,pr.getAddress());
			psmt.setString(11,pr.getStatus());
			
			int a= psmt.executeUpdate();
			if(a>0) {
				f=true;
			}
					
			
			
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		
		
		
		
		
		
		
		
		return f;
		
	}
//	get Appointment details  from user_id
public List<AppointmentProperty> aptmDetFromDatabase(int id){
	List<AppointmentProperty> list = new ArrayList<AppointmentProperty>();
	AppointmentProperty obj= null;
	try {
		
		String query= "select *from   appointmentDetails where  user_id=?";
		PreparedStatement psmt= con.prepareStatement(query);
		psmt.setInt(1, id);
	
	ResultSet pr = psmt.executeQuery();
	while(pr.next()) {
		obj = new 	AppointmentProperty();
		obj.setId(pr.getInt(1));
		obj.setUser_Id(pr.getInt(2));
		obj.setFullName(pr.getString(3));
		obj.setGender(pr.getString(4));
		obj.setAge(pr.getString(5));
		obj.setAppoint_date(pr.getString(6));
		obj.setEmail(pr.getString(7));
		obj.setPhone(pr.getString(8));
		obj.setDiseases(pr.getString(9));
		obj.setDoc_Id(pr.getInt(10));
		obj.setAddress(pr.getString(11));
		obj.setStatus(pr.getString(12));
		list.add(obj);

	}
		
		
		
		
		
		
		
		
		
		
		
		
		
	} catch (Exception e) {
	e.printStackTrace();	// TODO: handle exception
	}
	
	
	return list;
}
	
//get Appointment details  from user_id we get all appoitment from the appontment table so use list 
public List<AppointmentProperty> aptmDoctFromDatabase(int doc_id){
List<AppointmentProperty> list = new ArrayList<AppointmentProperty>();
AppointmentProperty obj= null;
try {
	
	String query= "select *from   appointmentDetails where  doc_Id=?";
	PreparedStatement psmt= con.prepareStatement(query);
	psmt.setInt(1, doc_id);

ResultSet pr = psmt.executeQuery();
while(pr.next()) {
	obj = new 	AppointmentProperty();
	obj.setId(pr.getInt(1));
	obj.setUser_Id(pr.getInt(2));
	obj.setFullName(pr.getString(3));
	obj.setGender(pr.getString(4));
	obj.setAge(pr.getString(5));
	obj.setAppoint_date(pr.getString(6));
	obj.setEmail(pr.getString(7));
	obj.setPhone(pr.getString(8));
	obj.setDiseases(pr.getString(9));
	obj.setDoc_Id(pr.getInt(10));
	obj.setAddress(pr.getString(11));
	obj.setStatus(pr.getString(12));
	list.add(obj);

}
	
	
	
	
	
	
	
	
	
	
	
	
	
} catch (Exception e) {
e.printStackTrace();	// TODO: handle exception
}


return list;
}	

//get speicfic appointment detials pass to the comment form so use object by app id


public AppointmentProperty aptmDetailsFromDatabaseById(int Id){
AppointmentProperty obj= null;
try {
	
	String query= "select *from   appointmentDetails where  Id=?";
	PreparedStatement psmt= con.prepareStatement(query);
	psmt.setInt(1, Id);

ResultSet pr = psmt.executeQuery();
while(pr.next()) {
	obj = new 	AppointmentProperty();
	obj.setId(pr.getInt(1));
	obj.setUser_Id(pr.getInt(2));
	obj.setFullName(pr.getString(3));
	obj.setGender(pr.getString(4));
	obj.setAge(pr.getString(5));
	obj.setAppoint_date(pr.getString(6));
	obj.setEmail(pr.getString(7));
	obj.setPhone(pr.getString(8));
	obj.setDiseases(pr.getString(9));
	obj.setDoc_Id(pr.getInt(10));
	obj.setAddress(pr.getString(11));
	obj.setStatus(pr.getString(12));

}
	
	
	
	
	
	
	
	
	
	
	
	
	
} catch (Exception e) {
e.printStackTrace();	// TODO: handle exception
}


return obj;
}	
//	update status of 
public boolean updateStatus(String status, int Id,int doc_Id ) {
	boolean f=false;
	try {
		String query= "update  appointmentDetails set status=? where Id=? and doc_Id=? ";
		PreparedStatement psmt= con.prepareStatement(query);

	
		
		psmt.setString(1,status);
		psmt.setInt(2,Id);
		psmt.setInt(3,doc_Id);
		
		int a= psmt.executeUpdate();
		if(a>0) {
			f=true;
		}
				
		
		
		
		
		
		
		
	} catch (Exception e) {
		e.printStackTrace();// TODO: handle exception
	}
	
	
	
	
	
	
	
	
	return f;
	
}
//get Appointment details  from  we get all appoitment from the appontment table so use list 

public List<AppointmentProperty> AllAppointFromDatabase(){
	List<AppointmentProperty> list = new ArrayList<AppointmentProperty>();
AppointmentProperty obj= null;
try {
	
	String query= "select *from   appointmentDetails";
	PreparedStatement psmt= con.prepareStatement(query);


ResultSet pr = psmt.executeQuery();
while(pr.next()) {
	obj = new 	AppointmentProperty();
	obj.setId(pr.getInt(1));
	obj.setUser_Id(pr.getInt(2));
	obj.setFullName(pr.getString(3));
	obj.setGender(pr.getString(4));
	obj.setAge(pr.getString(5));
	obj.setAppoint_date(pr.getString(6));
	obj.setEmail(pr.getString(7));
	obj.setPhone(pr.getString(8));
	obj.setDiseases(pr.getString(9));
	obj.setDoc_Id(pr.getInt(10));
	obj.setAddress(pr.getString(11));
	obj.setStatus(pr.getString(12));
	list.add(obj);

}
	
	
	
	
	
	
	
	
	
	
	
	
	
} catch (Exception e) {
e.printStackTrace();	// TODO: handle exception
}


return list;
}		
	
	
	
	
	
	

}
