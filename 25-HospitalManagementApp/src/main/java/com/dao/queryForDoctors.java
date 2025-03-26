package com.dao;
import java.sql.*;
import java.util.*;
import com.Property.DoctorProperty;
public class queryForDoctors {
private Connection con;
//field constructors..

public queryForDoctors(Connection con) {
	super();
	this.con = con;
}

//insert data into the datatable
public boolean doctorSaveData(DoctorProperty d) {
	boolean f= false;
	try {
		String query="insert into doctors(Full_Name,DOB,qualifications,specialist,email,mobileNo,password) values(?,?,?,?,?,?,?)";
		PreparedStatement psmt= con.prepareStatement(query);
		psmt.setString(1, d.getFullName());
		psmt.setString(2, d.getDOB());
		psmt.setString(3, d.getQualifications());
		psmt.setString(4, d.getSpecialist());
		psmt.setString(5, d.getEmail());
		psmt.setString(6, d.getMobileNo());
		psmt.setString(7, d.getPassword());
		int a= psmt.executeUpdate();
		if(a>0) {
			f=true;
		}
	
	} catch (Exception e) {
	e.printStackTrace();	// TODO: handle exception
	}
	return f;
}

//fetch all details from doctors table
public List<DoctorProperty> allData(){
	List<DoctorProperty> list= new ArrayList<DoctorProperty>();
	DoctorProperty d= null;
	try 
	
	{
		
		String query= "select * from  doctors";
		PreparedStatement psmt= con.prepareStatement(query);
		ResultSet rs= psmt.executeQuery();
		while(rs.next()) {
			d=new DoctorProperty();
			d.setId(rs.getInt(1));
			d.setFullName(rs.getString(2));
			d.setDOB(rs.getString(3));
			d.setQualifications(rs.getString(4));
			d.setSpecialist(rs.getString(5));
			d.setEmail(rs.getString(6));
			d.setMobileNo(rs.getString(7));
			list.add(d);
				
		}
		
	} catch (Exception e) {
		e.printStackTrace();// TODO: handle exception
	}
	
	
	
	
	
	return list;
}

//retreive all data from id and pass the value to the upated form
public DoctorProperty updateDoctorform(int id){
	
	DoctorProperty d = null;
	try {
		PreparedStatement psmt= con.prepareStatement("select * from doctors  where Id=?");
	psmt.setInt(1,id);
	ResultSet rs= psmt.executeQuery();
	while(rs.next()) {
		d = new DoctorProperty();
		d=new DoctorProperty();
		d.setId(rs.getInt(1));
		d.setFullName(rs.getString(2));
		d.setDOB(rs.getString(3));
		d.setQualifications(rs.getString(4));
		d.setSpecialist(rs.getString(5));
		d.setEmail(rs.getString(6));
		d.setMobileNo(rs.getString(7));
		d.setPassword(rs.getString(8));
	}
	
	
	} catch (Exception e) 
	
	{
		// TODO: handle exception
	}
	return d;
}
public boolean doctorUpdateDatabase(DoctorProperty d) {
	boolean f= false;
	try {
		String query="update doctors set Full_Name=?,DOB=?,qualifications=?,specialist=?,email=?,mobileNo=?,password=? where id=?";
		PreparedStatement psmt= con.prepareStatement(query);
		psmt.setString(1, d.getFullName());
		psmt.setString(2, d.getDOB());
		psmt.setString(3, d.getQualifications());
		psmt.setString(4, d.getSpecialist());
		psmt.setString(5, d.getEmail());
		psmt.setString(6, d.getMobileNo());
		psmt.setString(7, d.getPassword());
		psmt.setInt(8,d.getId());
	
		int a= psmt.executeUpdate();
		if(a>0) {
			f=true;
		}
	
	} catch (Exception e) {
	e.printStackTrace();	// TODO: handle exception
	}
	return f;
}

// delete data from table
public boolean deleteDataFromDatabase(int id) {
	boolean f=true;
	try {
		String query= "delete from doctors where id=?";
		PreparedStatement psmt= con.prepareStatement(query);
		psmt.setInt(1,id);
		int a= psmt.executeUpdate();
		if(a>0) {
			f=true;
		}
		
	} catch (Exception e) {
		e.printStackTrace();// TODO: handle exception
	}
	return f;
}

//No of doctors count
public int countDoctors() {
	int i=0;
	try {
		String query = "select * from doctors";
		PreparedStatement psmt= con.prepareStatement(query);
		ResultSet rs= psmt.executeQuery();
		while(rs.next()) {
			i++;
		}
		
		
		
		
		
		
		
	} catch (Exception e) {
	
		e.printStackTrace();
		// TODO: handle exception
	}
	
	
	return i;
}
//  count TotalAppointmetnDetials
public int countTotalAppointment() {
	int i=0;
	try {
		String query = "select * from appointmentdetails";
		PreparedStatement psmt= con.prepareStatement(query);
		ResultSet rs= psmt.executeQuery();
		while(rs.next()) {
			i++;
		}
		
		
		
		
		
		
		
	} catch (Exception e) {
	
		e.printStackTrace();
		// TODO: handle exception
	}
	
	
	return i;
}
//total count usersSignup

public int countTotalUserSignup(){
int i=0;
try {
	String query = "select * from signupdata1";
	PreparedStatement psmt= con.prepareStatement(query);
	ResultSet rs= psmt.executeQuery();
	while(rs.next()) {
		i++;
	}
	
	
	
	
	
	
	
} catch (Exception e) {

	e.printStackTrace();
	// TODO: handle exception
}


return i;
}
//total count specialist
public int countTotalSpecialist(){
int i=0;
try {
	String query = "select * from specialist";
	PreparedStatement psmt= con.prepareStatement(query);
	ResultSet rs= psmt.executeQuery();
	while(rs.next()) {
		i++;
	}
	
	
	
	
	
	
	
} catch (Exception e) {

	e.printStackTrace();
	// TODO: handle exception
}


return i;
}
//check old password is correct or not
public boolean checkOldPassword(int uid,String Password) {
	boolean f=false;
	try {
		String query= "select * from doctors where Id=? && password=? ";
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
		String query= "update  doctors set password=? where Id=? ";
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
public boolean doctorEditDatabase(DoctorProperty d) {
	boolean f= false;
	try {
		String query="update doctors set Full_Name=?,DOB=?,qualifications=?,specialist=?,email=?,mobileNo=? where id=?";
		PreparedStatement psmt= con.prepareStatement(query);
		psmt.setString(1, d.getFullName());
		psmt.setString(2, d.getDOB());
		psmt.setString(3, d.getQualifications());
		psmt.setString(4, d.getSpecialist());
		psmt.setString(5, d.getEmail());
		psmt.setString(6, d.getMobileNo());
		psmt.setInt(7,d.getId());
	
		int a= psmt.executeUpdate();
		if(a>0) {
			f=true;
		}
	
	} catch (Exception e) {
	e.printStackTrace();	// TODO: handle exception
	}
	return f;
}

}
