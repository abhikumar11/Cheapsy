package com.database;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.*;

import org.json.JSONArray;
import org.json.JSONObject;

import com.userbean.LoginUser;
import com.userbean.SaveUser;
import com.userbean.SaveSeller;
import com.userbean.SaveSellerDetails;

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
 public static int saveSeller(SaveSeller obj)
 {
	 int status=-1;
		
		try
		{
			Connection con=connect();
			String query="insert into seller_user_reg values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt=con.prepareStatement(query);
			stmt.setString(1,obj.getUserName());
			stmt.setString(2,obj.getUserId());
			stmt.setString(3,obj.getPassword());
			stmt.setString(4,null);
			stmt.setString(5,null);
			stmt.setString(6,null);
			stmt.setString(7,null);
			stmt.setString(8,null);
			stmt.setString(9,null);
			stmt.setString(10,null);
			stmt.setString(11,null);
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
 public static String getCity(int pin)
 {
	 StringBuffer res=new StringBuffer();
	 String city="";
     try {
//https://api.postalpincode.in/pincode/{PINCODE}
    URL url = new URL("https://api.postalpincode.in/pincode/"+pin);
    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
    conn.setRequestMethod("GET");
    conn.setRequestProperty("Accept", "application/json");
    if (conn.getResponseCode() != 200) 
    {
        System.out.println("Failed : HTTP Error code : "
                + conn.getResponseCode());
    }
    else
    {
    InputStreamReader in = new InputStreamReader(conn.getInputStream());
    BufferedReader br = new BufferedReader(in);
    String output;
   
    while ((output = br.readLine()) != null) {
                res.append(output);
    }
    conn.disconnect();
     JSONObject obj=new JSONObject(res.substring(1,res.length()));
     String status=obj.getString("Status");
     if(status.equals("Success"))
     {
         JSONArray b=obj.getJSONArray("PostOffice");
    // String state=b.getJSONObject(0).getString("State");
     city=b.getJSONObject(0).getString("District");
     //System.out.print("State: "+state+"\nCity: "+city+"\n");
     }
     else
     {
         System.out.print(status);
     }
    }
} catch (Exception e) {
    System.out.println("Exception in NetClientGet:- " + e);
}
     return city;
     
 }
 public static int saveSeller(SaveSellerDetails obj,String email)
 {
	 int status=-1;
	 try
	 {
		 Connection con=connect();
		 String query="update seller_user_reg set add1=?,add2=?,state=?,city=?,pin=?,bissname=?,accno=?,ifsc=? where email=?";
		 PreparedStatement stmt=con.prepareStatement(query);
		 stmt.setString(1,obj.getAdd1());
		 stmt.setString(2,obj.getAdd2());
		 stmt.setString(3,obj.getState());
		 stmt.setString(4,obj.getCity());
		 stmt.setString(5,obj.getPincode());
		 stmt.setString(6,obj.getBussname());
		 stmt.setString(7,obj.getAccno());
		 stmt.setString(8,obj.getIfsccode());
		 stmt.setString(9,email);
		 return stmt.executeUpdate();
	 }catch(Exception ex)
	 {
		 ex.printStackTrace();
	 }
	 return status;
 }
}
