package com.database;

import java.sql.*;

import com.userbean.LoginUser;
import com.userbean.SaveUser;

public class DbConnect {
 public static Connection connect()
 {
	 Connection con = null; 
	 try {
	 Class.forName("com.mysql.cj.jdbc.Driver");
       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grover","admin","admin@123");
  }catch (Exception ex) {
      ex.printStackTrace();
  } 
	 return con;
 }
 public static int saveNewUser(SaveUser obj)
 {
	 int status=-1;
	
	try
	{
		Connection con=connect();
		String query="insert into user_reg values(?,?,?)";
		PreparedStatement stmt=con.prepareStatement(query);
		stmt.setString(1,obj.getUserName());
		stmt.setString(2,obj.getUserId());
		stmt.setString(3,obj.getPassword());
		status=stmt.executeUpdate();
	}catch(Exception ex)
	{
		ex.printStackTrace();
	}
	return status;
 }
 public static ResultSet validateUser(LoginUser obj)
 {
	 ResultSet rs=null;
	 try
	 {
		 Connection con=connect();
		 String query="select * from user_reg where email_id=? and password=?";
		 PreparedStatement stmt=con.prepareStatement(query);
		 stmt.setString(1, obj.getUserName());
		 stmt.setString(2,obj.getPassword());
		 rs=stmt.executeQuery();
	 }catch(Exception ex)
	 {
		 ex.printStackTrace();
	 }
	 return rs;
 }
 public static ResultSet fetchData(String query)
 {
	 ResultSet rs=null;
	 try
	 {
		 Connection con=connect();
	     Statement stmt=con.createStatement();
		 rs=stmt.executeQuery(query);
	 }catch(Exception ex)
	 {
		 ex.printStackTrace();
	 }
	 return rs;
 }
}
