package org.gat.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


import org.gat.entity.Payment;
import org.gat.model.Paymentmodel;



@WebServlet("/PaymentController")
public class PaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/project")
	private DataSource dataSource;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String page = request.getParameter("page");
		page = page.toLowerCase();

		switch (page) {
		
		
		
		case "payment":
			addUserFormLoader(request, response);
			break;
		
		default:
			errorPage(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String operation = request.getParameter("form");
		operation = operation.toLowerCase();
		switch (operation) {
		case "adduseroperation":
			Payment newUser = new Payment(request.getParameter("name"), request.getParameter("batch"),request.getParameter("year"), request.getParameter("branch"), request.getParameter("category"), request.getParameter("total_fee"), request.getParameter("cardholder"), request.getParameter("cardnumber"), request.getParameter("expiry_date"), request.getParameter("cvc"), request.getParameter("amount"));
			addUserOperation(newUser);
			request.getRequestDispatcher("new.jsp").forward(request, response);
			break;
	
			
		default:
			errorPage(request, response);
			break;
		}
	}
	
	private void addUserOperation(Payment newUser) {
		new Paymentmodel().addUser(dataSource, newUser);
		return;
	}
	
	public void addUserFormLoader(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("title", "payment");
		request.getRequestDispatcher("payment.jsp").forward(request, response);

	}

	public void errorPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("title", "Error page");
		request.getRequestDispatcher("error.jsp").forward(request, response);

	}
	
	

}
