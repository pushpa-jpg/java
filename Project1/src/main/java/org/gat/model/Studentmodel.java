package org.gat.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;

import org.gat.entity.Addstudent;

public class Studentmodel {
	
	public List<Addstudent> listUsers(DataSource dataSource) {
		// Step 1: Initialize connection objects
		List<Addstudent> listUsers = new ArrayList<>(); 
        Connection connect = null;
        Statement stmt = null;
        ResultSet rs = null;       
        try {
			connect = dataSource.getConnection();			
			// Step 2: Create a SQL statements string
			String query = "Select * from student";
			stmt = connect.createStatement();
			// Step 3: Execute SQL query
         rs = stmt.executeQuery(query);
			// Step 4: Process the result set
			while(rs.next()){
				listUsers.add(new Addstudent(rs.getInt("id"), rs.getString("name"), rs.getString("gender"),rs.getString("branch"),rs.getString("address"),rs.getString("email"),rs.getString("phone")));
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}
        return listUsers;
	}
	
	public void addUser(DataSource dataSource, Addstudent newUser) {
		Connection connect = null;
		PreparedStatement statement = null;
		try {
			connect = dataSource.getConnection();
			int id = newUser.getId();
			String name = newUser.getName();
			String gender = newUser.getGender();
			String branch = newUser.getBranch();
			String address = newUser.getAddress();
			String email = newUser.getEmail();
			String phone = newUser.getPhone();
			String query = "insert into student (id, name, gender, branch, address, email, phone) values (?,?,?,?,?,?,?)";
			statement = connect.prepareStatement(query);		
			statement.setInt(1, id);
			statement.setString(2, name);
			statement.setString(3, gender);
			statement.setString(4, branch);
			statement.setString(5, address);
			statement.setString(6, email);
			statement.setString(7, phone);
			statement.execute();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public void updateUser(DataSource dataSource, Addstudent updatedUser) {
		Connection connect = null;
		PreparedStatement statement = null;
		try {
			connect = dataSource.getConnection();
			int id = updatedUser.getId();
			String name = updatedUser.getName();
			String gender = updatedUser.getGender();
			String branch = updatedUser.getBranch();
			String address = updatedUser.getAddress();
			String email = updatedUser.getEmail();
			String phone = updatedUser.getPhone();
			
			
			String query = "update student set name = ? ,gender =?,branch =?, address = ?, email = ?, phone =? where id = ? ";
			statement = connect.prepareStatement(query);
			statement.setString(1, name);
			statement.setString(2, gender);
			statement.setString(3, branch);
			statement.setString(4, address);
			statement.setString(5, email);
			statement.setString(6, phone);
			statement.setInt(7, id);
			statement.execute();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}

	}
	
	
	public void deleteUser(DataSource dataSource, int usersID) {
		Connection connect = null;
		PreparedStatement statement = null;
		try {
			connect = dataSource.getConnection();
			String query = "delete from student where id = ? ";
			statement = connect.prepareStatement(query);
			statement.setInt(1, usersID);
			statement.execute();	
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
	}
}
