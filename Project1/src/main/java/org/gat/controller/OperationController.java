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
import org.gat.entity.Addstudent;
import org.gat.model.Studentmodel;

@WebServlet("/operation")
public class OperationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/project")
	private DataSource dataSource;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String page = request.getParameter("page");
		page = page.toLowerCase();

		switch (page) {
		
		case "listusers":
			listUsers(request, response);
			break;
		case "addstudent":
			addUserFormLoader(request, response);
			break;
		
		case "updateuser":
			UpdateUserFormLoader(request, response);
			break;
		case "deleteuser":	
		     deleteUser(Integer.parseInt(request.getParameter("id")));
		     listUsers(request, response);
		     break;
		default:
			errorPage(request, response);
		}

	}
  
	private void deleteUser(int usersID) {
		new Studentmodel().deleteUser(dataSource,usersID);
		return;
	}

	private void UpdateUserFormLoader(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("title", "Update User");
		try {
			request.getRequestDispatcher("updateUser.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String operation = request.getParameter("form");
		operation = operation.toLowerCase();
		switch (operation) {
		case "adduseroperation":
			Addstudent newUser = new Addstudent(request.getParameter("name"), request.getParameter("gender"), request.getParameter("branch"), request.getParameter("address"), request.getParameter("email"), request.getParameter("phone"));
			addUserOperation(newUser);
			listUsers(request, response);
			break;
		case "updateuseroperation":
			Addstudent updatedUser = new Addstudent(Integer.parseInt(request.getParameter("id")),
					request.getParameter("name"), request.getParameter("gender"),request.getParameter("branch"),request.getParameter("address"),request.getParameter("email"),request.getParameter("phone"));
			updateUserOperation(dataSource, updatedUser);
			listUsers(request, response);
			break;
		default:
			errorPage(request, response);
			break;
		}
	}

	private void updateUserOperation(DataSource dataSource, Addstudent updatedUser) {
		new Studentmodel().updateUser(dataSource,updatedUser);
		return;
		
	}

	private void addUserOperation(Addstudent newUser) {
		new Studentmodel().addUser(dataSource, newUser);
		return;
	}

	public void listUsers(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Addstudent> listUsers = new ArrayList<>();
		listUsers = new Studentmodel().listUsers(dataSource);
		request.setAttribute("listUsers", listUsers);
		request.setAttribute("title", "List of users");
		request.getRequestDispatcher("listStudents.jsp").forward(request, response);

	}

	public void addUserFormLoader(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("title", "Add User");
		request.getRequestDispatcher("addstudent.jsp").forward(request, response);

	}

	public void errorPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("title", "Error page");
		request.getRequestDispatcher("error.jsp").forward(request, response);

	}
}
