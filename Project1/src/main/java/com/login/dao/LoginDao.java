package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	
	String sql = "select * from student where name=? and pass=?";
	
	String url = "jdbc:mysql://localhost:3306/fee_management";
	String username = "root";
	String password = "admin@123";
	public boolean check(String name, String pass) {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,name);
			st.setString(2,pass);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				return true;
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return false;
	
	}

}
