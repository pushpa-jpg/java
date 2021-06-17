<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password</title>
</head>
<body>
<% 
String url = "jdbc:mysql://localhost:3306/fee_management";
String username = "root";
String password = "admin@123";

String name = request.getParameter("name");
String pass = request.getParameter("pass");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,username,password);
	PreparedStatement st = con.prepareStatement("update student set pass=? where name=?");
    st.setString(2,name);	
    st.setString(1,pass);	
	int i = st.executeUpdate();
	
	if(i>0){
		response.sendRedirect("welcome.jsp");
	}
	else{
		response.sendRedirect("welcome.jsp");
	}
}
catch(Exception e){
	e.printStackTrace();
}


%>
</body>
</html>