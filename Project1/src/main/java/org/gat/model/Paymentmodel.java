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
import org.gat.entity.Payment;


public class Paymentmodel {
	
	public void addUser(DataSource dataSource, Payment newUser) {
		Connection connect = null;
		PreparedStatement statement = null;
		try {
			connect = dataSource.getConnection();
			int id = newUser.getId();
			String name = newUser.getName();
			String batch = newUser.getBatch();
			String year = newUser.getYear();
			String branch = newUser.getBranch();
			String category = newUser.getCategory();
			String total_fee = newUser.getTotal_fee();
			String cardholder = newUser.getCardholder();
			String cardnumber = newUser.getCardnumber();
			String expiry_date = newUser.getExpiry_date();
			String cvc = newUser.getCvc();
			String amount = newUser.getAmount();
			String due_fee="0";
			String query = "insert into payment (id, name, batch, year, branch, category, total_fee, cardholder, cardnumber, expiry_date, cvc, amount) values (?,?,?,?,?,?,?,?,?,?,?,?)";
			statement = connect.prepareStatement(query);		
			statement.setInt(1, id);
			statement.setString(2, name);
			statement.setString(3, batch);
			statement.setString(4, year);
			statement.setString(5, branch);
			statement.setString(6, category);
			statement.setString(7, total_fee);
			statement.setString(8, cardholder);
			statement.setString(9, cardnumber);
			statement.setString(10, expiry_date);
			statement.setString(11, cvc);
			statement.setString(12, amount);
			
			statement.execute();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	

	
	

}
