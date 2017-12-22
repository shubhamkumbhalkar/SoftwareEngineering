package com.iitc.cs487.teamf.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	public Connection createCon() {
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/hawkaide","root","mysql");  
			 return con;
			}catch(Exception e){ System.out.println(e);} 
		return null;
	}
	
}
