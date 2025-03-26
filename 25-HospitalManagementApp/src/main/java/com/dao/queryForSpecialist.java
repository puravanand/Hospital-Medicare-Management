package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Property.SpecialistProperty;

public class queryForSpecialist {
private Connection con;

public queryForSpecialist(Connection con) {
	super();
	this.con = con;
}
//insert query for specialist addition indata
public boolean addSpec(String name) {
	boolean f=false;
	try {
		String query= "insert into specialist (FullName) values(?)";
		PreparedStatement psmt= con.prepareStatement(query);
		psmt.setString(1,name);
		int a= psmt.executeUpdate();
		if(a>0) {
			f=true;
		}
	
	
	}
	catch (Exception e) {
		e.printStackTrace();// TODO: handle exception
	}
	
	return f;
}
//query for reperset the list of speiclist in the doctor form
public List<SpecialistProperty> representSpecialist(){
	List<SpecialistProperty> list= new ArrayList<SpecialistProperty>();
	SpecialistProperty sp= null;
	try {
		String query="select *from specialist";
		PreparedStatement psmt= con.prepareStatement(query);
		ResultSet rs= psmt.executeQuery();
		while(rs.next()) {
			sp= new SpecialistProperty();
			sp.setId(rs.getInt(1));
			sp.setSpecFullName(rs.getString(2));
			list.add(sp);
			
		}
		
		
		
		
		
	} catch (Exception e) {
	e.printStackTrace();	// TODO: handle exception
	}
	
	
	
	return list;
}

}
