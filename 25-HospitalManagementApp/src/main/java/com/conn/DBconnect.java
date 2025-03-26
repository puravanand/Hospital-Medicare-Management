package com.conn;
import java.sql.*;

public class DBconnect {
private static Connection con;
public static Connection getConn() {
	if(con==null) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try {
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalmanagement1","root","root");
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	return con;
}
}
